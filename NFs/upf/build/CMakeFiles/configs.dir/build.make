# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /users/sqi009/free5gc/NFs/upf

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /users/sqi009/free5gc/NFs/upf/build

# Utility rule file for configs.

# Include the progress variables for this target.
include CMakeFiles/configs.dir/progress.make

CMakeFiles/configs: config


config:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Copying configs"
	cd /users/sqi009/free5gc/NFs/upf/config && mkdir -p /users/sqi009/free5gc/NFs/upf/build/config >/dev/null 2>&1
	cd /users/sqi009/free5gc/NFs/upf/config && cp /users/sqi009/free5gc/NFs/upf/config/upfcfg.example.yaml /users/sqi009/free5gc/NFs/upf/build/config/upfcfg.yaml
	cd /users/sqi009/free5gc/NFs/upf/config && cp /users/sqi009/free5gc/NFs/upf/config/upfcfg.test.example.yaml /users/sqi009/free5gc/NFs/upf/build/config/upfcfg.test.yaml
	cd /users/sqi009/free5gc/NFs/upf/config && cp /users/sqi009/free5gc/NFs/upf/config/upfcfg.ulcl.example.yaml /users/sqi009/free5gc/NFs/upf/build/config/upfcfg.ulcl.yaml

configs: CMakeFiles/configs
configs: config
configs: CMakeFiles/configs.dir/build.make

.PHONY : configs

# Rule to build all files generated by this target.
CMakeFiles/configs.dir/build: configs

.PHONY : CMakeFiles/configs.dir/build

CMakeFiles/configs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/configs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/configs.dir/clean

CMakeFiles/configs.dir/depend:
	cd /users/sqi009/free5gc/NFs/upf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/sqi009/free5gc/NFs/upf /users/sqi009/free5gc/NFs/upf /users/sqi009/free5gc/NFs/upf/build /users/sqi009/free5gc/NFs/upf/build /users/sqi009/free5gc/NFs/upf/build/CMakeFiles/configs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/configs.dir/depend

