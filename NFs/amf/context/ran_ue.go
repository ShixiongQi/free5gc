package context

import (
	"encoding/hex"
	"fmt"
	"time"

	"github.com/mohae/deepcopy"
	"github.com/sirupsen/logrus"

	"github.com/free5gc/amf/logger"
	"github.com/free5gc/ngap/ngapConvert"
	"github.com/free5gc/ngap/ngapType"
	"github.com/free5gc/openapi/models"
)

type RelAction int

const (
	RanUeNgapIdUnspecified int64 = 0xffffffff
)

const (
	UeContextN2NormalRelease RelAction = iota
	UeContextReleaseHandover
	UeContextReleaseUeContext
)

type RanUe struct {
	/* UE identity*/
	RanUeNgapId int64
	AmfUeNgapId int64

	/* HandOver Info*/
	HandOverType        ngapType.HandoverType
	SuccessPduSessionId []int32
	SourceUe            *RanUe
	TargetUe            *RanUe

	/* UserLocation*/
	Tai      models.Tai
	Location models.UserLocation
	/* context about udm */
	SupportVoPSn3gpp  bool
	SupportVoPS       bool
	SupportedFeatures string
	LastActTime       *time.Time

	/* Related Context*/
	AmfUe *AmfUe
	Ran   *AmfRan

	/* Routing ID */
	RoutingID string
	/* Trace Recording Session Reference */
	Trsr string
	/* Ue Context Release Action */
	ReleaseAction RelAction
	/* context used for AMF Re-allocation procedure */
	OldAmfName            string
	InitialUEMessage      []byte
	RRCEstablishmentCause string // Received from initial ue message; pattern: ^[0-9a-fA-F]+$
	UeContextRequest      bool

	/* send initial context setup request or not*/
	SentInitialContextSetupRequest bool

	/* logger */
	Log *logrus.Entry
}

func (ranUe *RanUe) Remove() error {
	if ranUe == nil {
		return fmt.Errorf("RanUe not found in RemoveRanUe")
	}
	ran := ranUe.Ran
	if ran == nil {
		return fmt.Errorf("RanUe not found in Ran")
	}
	if ranUe.AmfUe != nil {
		ranUe.AmfUe.DetachRanUe(ran.AnType)
		ranUe.DetachAmfUe()
	}

	for index, ranUe1 := range ran.RanUeList {
		if ranUe1 == ranUe {
			ran.RanUeList = append(ran.RanUeList[:index], ran.RanUeList[index+1:]...)
			break
		}
	}
	self := AMF_Self()
	self.RanUePool.Delete(ranUe.AmfUeNgapId)
	amfUeNGAPIDGenerator.FreeID(ranUe.AmfUeNgapId)
	return nil
}

func (ranUe *RanUe) DetachAmfUe() {
	ranUe.AmfUe = nil
}

func (ranUe *RanUe) SwitchToRan(newRan *AmfRan, ranUeNgapId int64) error {
	if ranUe == nil {
		return fmt.Errorf("ranUe is nil")
	}

	if newRan == nil {
		return fmt.Errorf("newRan is nil")
	}

	oldRan := ranUe.Ran

	// remove ranUe from oldRan
	for index, ranUe1 := range oldRan.RanUeList {
		if ranUe1 == ranUe {
			oldRan.RanUeList = append(oldRan.RanUeList[:index], oldRan.RanUeList[index+1:]...)
			break
		}
	}

	// add ranUe to newRan
	newRan.RanUeList = append(newRan.RanUeList, ranUe)

	// switch to newRan
	ranUe.Ran = newRan
	ranUe.RanUeNgapId = ranUeNgapId

	logger.ContextLog.Infof("RanUe[RanUeNgapID: %d] Switch to new Ran[Name: %s]", ranUe.RanUeNgapId, ranUe.Ran.Name)
	return nil
}

func (ranUe *RanUe) UpdateLocation(userLocationInformation *ngapType.UserLocationInformation) {
	if userLocationInformation == nil {
		return
	}
	var ts, te int64
	amfSelf := AMF_Self()
	curTime := time.Now().UTC()
	switch userLocationInformation.Present {
	case ngapType.UserLocationInformationPresentUserLocationInformationEUTRA:
		locationInfoEUTRA := userLocationInformation.UserLocationInformationEUTRA
		if ranUe.Location.EutraLocation == nil {
			ranUe.Location.EutraLocation = new(models.EutraLocation)
		}

		tAI := locationInfoEUTRA.TAI
		ts = time.Now().UnixNano() // Record the start timestamp of PlmnIdToModels
		plmnID := ngapConvert.PlmnIdToModels(tAI.PLMNIdentity)
		te = time.Now().UnixNano() // Record the end timestamp of PlmnIdToModels
		// fmt.Printf("QLOG: Latency of PlmnIdToModels (EUTRA) (nanos): %d\n", te-ts)
		logger.ContextLog.Infof("QLOG: Latency of PlmnIdToModels (EUTRA) (nanos): %d", te-ts)
		ts = time.Now().UnixNano() // Record the start timestamp of EncodeToString
		tac := hex.EncodeToString(tAI.TAC.Value)
		te = time.Now().UnixNano() // Record the end timestamp of EncodeToString
		// fmt.Printf("QLOG: Latency of EncodeToString (EUTRA) (nanos): %d\n", te-ts)
		logger.ContextLog.Infof("QLOG: Latency of EncodeToString (EUTRA) (nanos): %d", te-ts)

		if ranUe.Location.EutraLocation.Tai == nil {
			ranUe.Location.EutraLocation.Tai = new(models.Tai)
		}
		ranUe.Location.EutraLocation.Tai.PlmnId = &plmnID
		ranUe.Location.EutraLocation.Tai.Tac = tac
		ranUe.Tai = *ranUe.Location.EutraLocation.Tai

		eUTRACGI := locationInfoEUTRA.EUTRACGI
		ePlmnID := ngapConvert.PlmnIdToModels(eUTRACGI.PLMNIdentity)
		eutraCellID := ngapConvert.BitStringToHex(&eUTRACGI.EUTRACellIdentity.Value)

		if ranUe.Location.EutraLocation.Ecgi == nil {
			ranUe.Location.EutraLocation.Ecgi = new(models.Ecgi)
		}
		ranUe.Location.EutraLocation.Ecgi.PlmnId = &ePlmnID
		ranUe.Location.EutraLocation.Ecgi.EutraCellId = eutraCellID
		ranUe.Location.EutraLocation.UeLocationTimestamp = &curTime
		if locationInfoEUTRA.TimeStamp != nil {
			ranUe.Location.EutraLocation.AgeOfLocationInformation = ngapConvert.TimeStampToInt32(
				locationInfoEUTRA.TimeStamp.Value)
		}
		if ranUe.AmfUe != nil {
			if ranUe.AmfUe.Tai != ranUe.Tai {
				ranUe.AmfUe.LocationChanged = true
			}
			ranUe.AmfUe.Location = deepcopy.Copy(ranUe.Location).(models.UserLocation)
			ranUe.AmfUe.Tai = deepcopy.Copy(*ranUe.AmfUe.Location.EutraLocation.Tai).(models.Tai)
		}
	case ngapType.UserLocationInformationPresentUserLocationInformationNR:
		locationInfoNR := userLocationInformation.UserLocationInformationNR
		if ranUe.Location.NrLocation == nil {
			ranUe.Location.NrLocation = new(models.NrLocation)
		}

		tAI := locationInfoNR.TAI
		ts = time.Now().UnixNano() // Record the start timestamp of PlmnIdToModels
		plmnID := ngapConvert.PlmnIdToModels(tAI.PLMNIdentity)
		te = time.Now().UnixNano() // Record the end timestamp of PlmnIdToModels
		fmt.Printf("QLOG: Latency of TAI PlmnIdToModels (NR) (nanos): %d\n", te-ts)
		logger.ContextLog.Infof("QLOG: Latency of TAI PlmnIdToModels (NR) (nanos): %d", te-ts)
		ts = time.Now().UnixNano() // Record the start timestamp of EncodeToString
		tac := hex.EncodeToString(tAI.TAC.Value)
		te = time.Now().UnixNano() // Record the end timestamp of EncodeToString
		fmt.Printf("QLOG: Latency of TAI EncodeToString (NR) (nanos): %d\n", te-ts)
		logger.ContextLog.Infof("QLOG: Latency of TAI EncodeToString (NR) (nanos): %d", te-ts)

		if ranUe.Location.NrLocation.Tai == nil {
			ranUe.Location.NrLocation.Tai = new(models.Tai)
		}
		ranUe.Location.NrLocation.Tai.PlmnId = &plmnID
		ranUe.Location.NrLocation.Tai.Tac = tac
		ranUe.Tai = deepcopy.Copy(*ranUe.Location.NrLocation.Tai).(models.Tai)

		nRCGI := locationInfoNR.NRCGI
		ts = time.Now().UnixNano() // Record the start timestamp of PlmnIdToModels
		nRPlmnID := ngapConvert.PlmnIdToModels(nRCGI.PLMNIdentity)
		te = time.Now().UnixNano() // Record the end timestamp of PlmnIdToModels
		// fmt.Printf("QLOG: Latency of NRCGI PlmnIdToModels (NR) (nanos): %d\n", te-ts)
		logger.ContextLog.Infof("QLOG: Latency of NRCGI PlmnIdToModels (NR) (nanos): %d", te-ts)
		ts = time.Now().UnixNano() // Record the start timestamp of BitStringToHex
		nRCellID := ngapConvert.BitStringToHex(&nRCGI.NRCellIdentity.Value)
		te = time.Now().UnixNano() // Record the end timestamp of BitStringToHex
		// fmt.Printf("QLOG: Latency of NRCGI BitStringToHex (NR) (nanos): %d\n", te-ts)
		logger.ContextLog.Infof("QLOG: Latency of NRCGI BitStringToHex (NR) (nanos): %d", te-ts)

		if ranUe.Location.NrLocation.Ncgi == nil {
			ranUe.Location.NrLocation.Ncgi = new(models.Ncgi)
		}
		ranUe.Location.NrLocation.Ncgi.PlmnId = &nRPlmnID
		ranUe.Location.NrLocation.Ncgi.NrCellId = nRCellID
		ranUe.Location.NrLocation.UeLocationTimestamp = &curTime
		if locationInfoNR.TimeStamp != nil {
			ranUe.Location.NrLocation.AgeOfLocationInformation = ngapConvert.TimeStampToInt32(locationInfoNR.TimeStamp.Value)
		}
		if ranUe.AmfUe != nil {
			if ranUe.AmfUe.Tai != ranUe.Tai {
				ranUe.AmfUe.LocationChanged = true
			}
			ranUe.AmfUe.Location = deepcopy.Copy(ranUe.Location).(models.UserLocation)
			ranUe.AmfUe.Tai = deepcopy.Copy(*ranUe.AmfUe.Location.NrLocation.Tai).(models.Tai)
		}
	case ngapType.UserLocationInformationPresentUserLocationInformationN3IWF:
		locationInfoN3IWF := userLocationInformation.UserLocationInformationN3IWF
		if ranUe.Location.N3gaLocation == nil {
			ranUe.Location.N3gaLocation = new(models.N3gaLocation)
		}

		ip := locationInfoN3IWF.IPAddress
		port := locationInfoN3IWF.PortNumber

		ipv4Addr, ipv6Addr := ngapConvert.IPAddressToString(ip)

		ranUe.Location.N3gaLocation.UeIpv4Addr = ipv4Addr
		ranUe.Location.N3gaLocation.UeIpv6Addr = ipv6Addr
		ranUe.Location.N3gaLocation.PortNumber = ngapConvert.PortNumberToInt(port)
		// N3GPP TAI is operator-specific
		// TODO: define N3GPP TAI
		ranUe.Location.N3gaLocation.N3gppTai = &models.Tai{
			PlmnId: amfSelf.SupportTaiLists[0].PlmnId,
			Tac:    amfSelf.SupportTaiLists[0].Tac,
		}
		ranUe.Tai = deepcopy.Copy(*ranUe.Location.N3gaLocation.N3gppTai).(models.Tai)

		if ranUe.AmfUe != nil {
			ranUe.AmfUe.Location = deepcopy.Copy(ranUe.Location).(models.UserLocation)
			ranUe.AmfUe.Tai = *ranUe.Location.N3gaLocation.N3gppTai
		}
	case ngapType.UserLocationInformationPresentNothing:
	}
}
