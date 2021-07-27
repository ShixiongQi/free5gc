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
include updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/depend.make

# Include the progress variables for this target.
include updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/progress.make

# Include the compile flags for this target's objects.
include updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/flags.make

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.o: updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/flags.make
updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.o: ../updk/src/kernel/gtpv1/src/gtp_buffer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.o"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.o   -c /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_buffer.c

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.i"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_buffer.c > CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.i

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.s"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_buffer.c -o CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.s

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.o: updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/flags.make
updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.o: ../updk/src/kernel/gtpv1/src/gtp_link.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.o"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.o   -c /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_link.c

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.i"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_link.c > CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.i

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.s"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_link.c -o CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.s

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.o: updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/flags.make
updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.o: ../updk/src/kernel/gtpv1/src/gtp_path.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.o"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.o   -c /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_path.c

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.i"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_path.c > CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.i

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.s"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_path.c -o CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.s

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.o: updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/flags.make
updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.o: ../updk/src/kernel/gtpv1/src/gtp_tunnel.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.o"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.o   -c /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_tunnel.c

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.i"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_tunnel.c > CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.i

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.s"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1/src/gtp_tunnel.c -o CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.s

# Object files for target free5GC_gtpv1
free5GC_gtpv1_OBJECTS = \
"CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.o" \
"CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.o" \
"CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.o" \
"CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.o"

# External object files for target free5GC_gtpv1
free5GC_gtpv1_EXTERNAL_OBJECTS =

updk/src/kernel/gtpv1/libfree5GC_gtpv1.a: updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_buffer.c.o
updk/src/kernel/gtpv1/libfree5GC_gtpv1.a: updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_link.c.o
updk/src/kernel/gtpv1/libfree5GC_gtpv1.a: updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_path.c.o
updk/src/kernel/gtpv1/libfree5GC_gtpv1.a: updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/src/gtp_tunnel.c.o
updk/src/kernel/gtpv1/libfree5GC_gtpv1.a: updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/build.make
updk/src/kernel/gtpv1/libfree5GC_gtpv1.a: updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/users/sqi009/free5gc/NFs/upf/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C static library libfree5GC_gtpv1.a"
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && $(CMAKE_COMMAND) -P CMakeFiles/free5GC_gtpv1.dir/cmake_clean_target.cmake
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/free5GC_gtpv1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/build: updk/src/kernel/gtpv1/libfree5GC_gtpv1.a

.PHONY : updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/build

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/clean:
	cd /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 && $(CMAKE_COMMAND) -P CMakeFiles/free5GC_gtpv1.dir/cmake_clean.cmake
.PHONY : updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/clean

updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/depend:
	cd /users/sqi009/free5gc/NFs/upf/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/sqi009/free5gc/NFs/upf /users/sqi009/free5gc/NFs/upf/updk/src/kernel/gtpv1 /users/sqi009/free5gc/NFs/upf/build /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1 /users/sqi009/free5gc/NFs/upf/build/updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : updk/src/kernel/gtpv1/CMakeFiles/free5GC_gtpv1.dir/depend

