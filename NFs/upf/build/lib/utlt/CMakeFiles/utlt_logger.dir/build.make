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

# Utility rule file for utlt_logger.

# Include the progress variables for this target.
include lib/utlt/CMakeFiles/utlt_logger.dir/progress.make

lib/utlt/CMakeFiles/utlt_logger: utlt_logger


utlt_logger:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building utlt_logger"
	cd /users/sqi009/free5gc/NFs/upf/lib/utlt/logger && go build -o /users/sqi009/free5gc/NFs/upf/build/utlt_logger/liblogger.so -buildmode=c-shared
	cd /users/sqi009/free5gc/NFs/upf/lib/utlt/logger && mv /users/sqi009/free5gc/NFs/upf/build/utlt_logger/liblogger.h /users/sqi009/free5gc/NFs/upf/build/utlt_logger/logger.h

utlt_logger: lib/utlt/CMakeFiles/utlt_logger
utlt_logger: utlt_logger
utlt_logger: lib/utlt/CMakeFiles/utlt_logger.dir/build.make

.PHONY : utlt_logger

# Rule to build all files generated by this target.
lib/utlt/CMakeFiles/utlt_logger.dir/build: utlt_logger

.PHONY : lib/utlt/CMakeFiles/utlt_logger.dir/build

lib/utlt/CMakeFiles/utlt_logger.dir/clean:
	cd /users/sqi009/free5gc/NFs/upf/build/lib/utlt && $(CMAKE_COMMAND) -P CMakeFiles/utlt_logger.dir/cmake_clean.cmake
.PHONY : lib/utlt/CMakeFiles/utlt_logger.dir/clean

lib/utlt/CMakeFiles/utlt_logger.dir/depend:
	cd /users/sqi009/free5gc/NFs/upf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/sqi009/free5gc/NFs/upf /users/sqi009/free5gc/NFs/upf/lib/utlt /users/sqi009/free5gc/NFs/upf/build /users/sqi009/free5gc/NFs/upf/build/lib/utlt /users/sqi009/free5gc/NFs/upf/build/lib/utlt/CMakeFiles/utlt_logger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/utlt/CMakeFiles/utlt_logger.dir/depend
