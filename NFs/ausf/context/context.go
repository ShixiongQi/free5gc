package context

import (
	// "fmt"
	"regexp"
	"sync"
	"time"

	"github.com/free5gc/ausf/logger"
	"github.com/free5gc/openapi/models"
)

type AUSFContext struct {
	suciSupiMap  sync.Map
	UePool       sync.Map
	NfId         string
	GroupID      string
	SBIPort      int
	RegisterIPv4 string
	BindingIPv4  string
	Url          string
	UriScheme    models.UriScheme
	NrfUri       string
	NfService    map[models.ServiceName]models.NfService
	PlmnList     []models.PlmnId
	UdmUeauUrl   string
	snRegex      *regexp.Regexp
}

type AusfUeContext struct {
	Supi               string
	Kausf              string
	Kseaf              string
	ServingNetworkName string
	AuthStatus         models.AuthResult
	UdmUeauUrl         string

	// for 5G AKA
	XresStar string

	// for EAP-AKA'
	K_aut string
	XRES  string
	Rand  string
}

type SuciSupiMap struct {
	SupiOrSuci string
	Supi       string
}

const (
	EAP_AKA_PRIME_TYPENUM = 50
)

// Attribute Types for EAP-AKA'
const (
	AT_RAND_ATTRIBUTE         = 1
	AT_AUTN_ATTRIBUTE         = 2
	AT_RES_ATTRIBUTE          = 3
	AT_MAC_ATTRIBUTE          = 11
	AT_NOTIFICATION_ATTRIBUTE = 12
	AT_IDENTITY_ATTRIBUTE     = 14
	AT_KDF_INPUT_ATTRIBUTE    = 23
	AT_KDF_ATTRIBUTE          = 24
)

var ausfContext AUSFContext

func Init() {
	if snRegex, err := regexp.Compile("5G:mnc[0-9]{3}[.]mcc[0-9]{3}[.]3gppnetwork[.]org"); err != nil {
		logger.ContextLog.Warnf("SN compile error: %+v", err)
	} else {
		ausfContext.snRegex = snRegex
	}
	InitAusfContext(&ausfContext)
}

func NewAusfUeContext(identifier string) (ausfUeContext *AusfUeContext) {
	ausfUeContext = new(AusfUeContext)
	ausfUeContext.Supi = identifier // supi
	return ausfUeContext
}

func AddAusfUeContextToPool(ausfUeContext *AusfUeContext) {
	ts := time.Now().UnixNano() // Record the start timestamp of AddAusfUeContextToPool
	ausfContext.UePool.Store(ausfUeContext.Supi, ausfUeContext)
	te := time.Now().UnixNano() // Record the end timestamp of AddAusfUeContextToPool
	// fmt.Printf("QLOG: Latency of SUPI insertion in AddAusfUeContextToPool (nanos): %d\n", te-ts)
	logger.ContextLog.Infof("QLOG: Latency of SUPI insertion in AddAusfUeContextToPool (nanos): %d", te-ts)
}

func CheckIfAusfUeContextExists(ref string) bool {
	ts := time.Now().UnixNano() // Record the start timestamp of CheckIfAusfUeContextExists
	_, ok := ausfContext.UePool.Load(ref)
	te := time.Now().UnixNano() // Record the end timestamp of CheckIfAusfUeContextExists
	// fmt.Printf("QLOG: Latency of SUPI lookup in CheckIfAusfUeContextExists (nanos): %d\n", te-ts)
	logger.ContextLog.Infof("QLOG: Latency of SUPI lookup in CheckIfAusfUeContextExists (nanos): %d", te-ts)
	return ok
}

func GetAusfUeContext(ref string) *AusfUeContext {
	ts := time.Now().UnixNano() // Record the start timestamp of GetAusfUeContext
	context, _ := ausfContext.UePool.Load(ref)
	te := time.Now().UnixNano() // Record the end timestamp of GetAusfUeContext
	// fmt.Printf("QLOG: Latency of SUPI lookup in GetAusfUeContext (nanos): %d\n", te-ts)
	logger.ContextLog.Infof("QLOG: Latency of SUPI lookup in GetAusfUeContext (nanos): %d", te-ts)
	ausfUeContext := context.(*AusfUeContext)
	return ausfUeContext
}

func AddSuciSupiPairToMap(supiOrSuci string, supi string) {
	newPair := new(SuciSupiMap)
	newPair.SupiOrSuci = supiOrSuci
	newPair.Supi = supi
	ts := time.Now().UnixNano() // Record the start timestamp of AddSuciSupiPairToMap
	ausfContext.suciSupiMap.Store(supiOrSuci, newPair)
	te := time.Now().UnixNano() // Record the end timestamp of AddSuciSupiPairToMap
	// fmt.Printf("QLOG: Latency of SUPI insertion in AddSuciSupiPairToMap (nanos): %d\n", te-ts)
	logger.ContextLog.Infof("QLOG: Latency of SUPI insertion in AddSuciSupiPairToMap (nanos): %d", te-ts)
}

func CheckIfSuciSupiPairExists(ref string) bool {
	ts := time.Now().UnixNano() // Record the start timestamp of CheckIfSuciSupiPairExists
	_, ok := ausfContext.suciSupiMap.Load(ref)
	te := time.Now().UnixNano() // Record the end timestamp of CheckIfSuciSupiPairExists
	// fmt.Printf("QLOG: Latency of SUPI lookup in CheckIfSuciSupiPairExists (nanos): %d\n", te-ts)
	logger.ContextLog.Infof("QLOG: Latency of SUPI lookup in CheckIfSuciSupiPairExists (nanos): %d", te-ts)
	return ok
}

func GetSupiFromSuciSupiMap(ref string) (supi string) {
	ts := time.Now().UnixNano() // Record the start timestamp of GetSupiFromSuciSupiMap
	val, _ := ausfContext.suciSupiMap.Load(ref)
	te := time.Now().UnixNano() // Record the end timestamp of GetSupiFromSuciSupiMap
	// fmt.Printf("QLOG: Latency of SUPI lookup in GetSupiFromSuciSupiMap (nanos): %d\n", te-ts)
	logger.ContextLog.Infof("QLOG: Latency of SUPI lookup in GetSupiFromSuciSupiMap (nanos): %d", te-ts)
	suciSupiMap := val.(*SuciSupiMap)
	supi = suciSupiMap.Supi
	return supi
}

func IsServingNetworkAuthorized(lookup string) bool {
	if ausfContext.snRegex.MatchString(lookup) {
		return true
	} else {
		return false
	}
}

func GetSelf() *AUSFContext {
	return &ausfContext
}

func (a *AUSFContext) GetSelfID() string {
	return a.NfId
}
