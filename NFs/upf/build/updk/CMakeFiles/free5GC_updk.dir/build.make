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

# Include any dependencies generated for this target.
include updk/CMakeFiles/free5GC_updk.dir/depend.make

# Include the progress variables for this target.
include updk/CMakeFiles/free5GC_updk.dir/progress.make

# Include the compile flags for this target's objects.
include updk/CMakeFiles/free5GC_updk.dir/flags.make

updk/CMakeFiles/free5GC_updk.dir/src/env.c.o: updk/CMakeFiles/free5GC_updk.dir/flags.make
updk/CMakeFiles/free5GC_updk.dir/src/env.c.o: ../updk/src/env.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object updk/CMakeFiles/free5GC_updk.dir/src/env.c.o"
	cd /users/sqi009/free5gc/NFs/upf/build/updk && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/free5GC_updk.dir/src/env.c.o   -c /users/sqi009/free5gc/NFs/upf/updk/src/env.c

updk/CMakeFiles/free5GC_updk.dir/src/env.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/free5GC_updk.dir/src/env.c.i"
	cd /users/sqi009/free5gc/NFs/upf/build/updk && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/sqi009/free5gc/NFs/upf/updk/src/env.c > CMakeFiles/free5GC_updk.dir/src/env.c.i

updk/CMakeFiles/free5GC_updk.dir/src/env.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/free5GC_updk.dir/src/env.c.s"
	cd /users/sqi009/free5gc/NFs/upf/build/updk && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/sqi009/free5gc/NFs/upf/updk/src/env.c -o CMakeFiles/free5GC_updk.dir/src/env.c.s

# Object files for target free5GC_updk
free5GC_updk_OBJECTS = \
"CMakeFiles/free5GC_updk.dir/src/env.c.o"

# External object files for target free5GC_updk
free5GC_updk_EXTERNAL_OBJECTS =

updk/libfree5GC_updk.a: updk/CMakeFiles/free5GC_updk.dir/src/env.c.o
updk/libfree5GC_updk.a: updk/CMakeFiles/free5GC_updk.dir/build.make
updk/libfree5GC_updk.a: updk/CMakeFiles/free5GC_updk.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libfree5GC_updk.a"
	cd /users/sqi009/free5gc/NFs/upf/build/updk && $(CMAKE_COMMAND) -P CMakeFiles/free5GC_updk.dir/cmake_clean_target.cmake
	cd /users/sqi009/free5gc/NFs/upf/build/updk && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/free5GC_updk.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
updk/CMakeFiles/free5GC_updk.dir/build: updk/libfree5GC_updk.a

.PHONY : updk/CMakeFiles/free5GC_updk.dir/build

updk/CMakeFiles/free5GC_updk.dir/clean:
	cd /users/sqi009/free5gc/NFs/upf/build/updk && $(CMAKE_COMMAND) -P CMakeFiles/free5GC_updk.dir/cmake_clean.cmake
.PHONY : updk/CMakeFiles/free5GC_updk.dir/clean

updk/CMakeFiles/free5GC_updk.dir/depend:
	cd /users/sqi009/free5gc/NFs/upf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/sqi009/free5gc/NFs/upf /users/sqi009/free5gc/NFs/upf/updk /users/sqi009/free5gc/NFs/upf/build /users/sqi009/free5gc/NFs/upf/build/updk /users/sqi009/free5gc/NFs/upf/build/updk/CMakeFiles/free5GC_updk.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : updk/CMakeFiles/free5GC_updk.dir/depend
