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
include updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/depend.make

# Include the progress variables for this target.
include updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/progress.make

# Include the compile flags for this target's objects.
include updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/flags.make

updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/test.c.o: updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/flags.make
updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/test.c.o: ../updk/src/kernel/knet/test.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/test.c.o"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/knet && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/free5GC_knet_test.dir/test.c.o   -c /users/sqi009/free5gc/NFs/upf/updk/src/kernel/knet/test.c

updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/test.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/free5GC_knet_test.dir/test.c.i"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/knet && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/sqi009/free5gc/NFs/upf/updk/src/kernel/knet/test.c > CMakeFiles/free5GC_knet_test.dir/test.c.i

updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/test.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/free5GC_knet_test.dir/test.c.s"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/knet && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/sqi009/free5gc/NFs/upf/updk/src/kernel/knet/test.c -o CMakeFiles/free5GC_knet_test.dir/test.c.s

# Object files for target free5GC_knet_test
free5GC_knet_test_OBJECTS = \
"CMakeFiles/free5GC_knet_test.dir/test.c.o"

# External object files for target free5GC_knet_test
free5GC_knet_test_EXTERNAL_OBJECTS =

updk/src/kernel/knet/users/sqi009/free5gc/NFs/upf/build/bin/testknet: updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/test.c.o
updk/src/kernel/knet/users/sqi009/free5gc/NFs/upf/build/bin/testknet: updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/build.make
updk/src/kernel/knet/users/sqi009/free5gc/NFs/upf/build/bin/testknet: lib/utlt/libfree5GC_utlt.a
updk/src/kernel/knet/users/sqi009/free5gc/NFs/upf/build/bin/testknet: updk/src/kernel/knet/libfree5GC_knet.a
updk/src/kernel/knet/users/sqi009/free5gc/NFs/upf/build/bin/testknet: lib/utlt/libfree5GC_utlt.a
updk/src/kernel/knet/users/sqi009/free5gc/NFs/upf/build/bin/testknet: updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable /users/sqi009/free5gc/NFs/upf/build/bin/testknet"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/knet && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/free5GC_knet_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/build: updk/src/kernel/knet/users/sqi009/free5gc/NFs/upf/build/bin/testknet

.PHONY : updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/build

updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/clean:
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/knet && $(CMAKE_COMMAND) -P CMakeFiles/free5GC_knet_test.dir/cmake_clean.cmake
.PHONY : updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/clean

updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/depend:
	cd /users/sqi009/free5gc/NFs/upf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/sqi009/free5gc/NFs/upf /users/sqi009/free5gc/NFs/upf/updk/src/kernel/knet /users/sqi009/free5gc/NFs/upf/build /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/knet /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : updk/src/kernel/knet/CMakeFiles/free5GC_knet_test.dir/depend

