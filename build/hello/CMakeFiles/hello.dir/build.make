# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/codedu/Code/CmakeTest

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/codedu/Code/CmakeTest/build

# Include any dependencies generated for this target.
include hello/CMakeFiles/hello.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include hello/CMakeFiles/hello.dir/compiler_depend.make

# Include the progress variables for this target.
include hello/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include hello/CMakeFiles/hello.dir/flags.make

hello/CMakeFiles/hello.dir/hello.c.o: hello/CMakeFiles/hello.dir/flags.make
hello/CMakeFiles/hello.dir/hello.c.o: /home/codedu/Code/CmakeTest/hello/hello.c
hello/CMakeFiles/hello.dir/hello.c.o: hello/CMakeFiles/hello.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/codedu/Code/CmakeTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object hello/CMakeFiles/hello.dir/hello.c.o"
	cd /home/codedu/Code/CmakeTest/build/hello && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT hello/CMakeFiles/hello.dir/hello.c.o -MF CMakeFiles/hello.dir/hello.c.o.d -o CMakeFiles/hello.dir/hello.c.o -c /home/codedu/Code/CmakeTest/hello/hello.c

hello/CMakeFiles/hello.dir/hello.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing C source to CMakeFiles/hello.dir/hello.c.i"
	cd /home/codedu/Code/CmakeTest/build/hello && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/codedu/Code/CmakeTest/hello/hello.c > CMakeFiles/hello.dir/hello.c.i

hello/CMakeFiles/hello.dir/hello.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling C source to assembly CMakeFiles/hello.dir/hello.c.s"
	cd /home/codedu/Code/CmakeTest/build/hello && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/codedu/Code/CmakeTest/hello/hello.c -o CMakeFiles/hello.dir/hello.c.s

# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/hello.c.o"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

hello/hello.a: hello/CMakeFiles/hello.dir/hello.c.o
hello/hello.a: hello/CMakeFiles/hello.dir/build.make
hello/hello.a: hello/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/codedu/Code/CmakeTest/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library hello.a"
	cd /home/codedu/Code/CmakeTest/build/hello && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean_target.cmake
	cd /home/codedu/Code/CmakeTest/build/hello && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
hello/CMakeFiles/hello.dir/build: hello/hello.a
.PHONY : hello/CMakeFiles/hello.dir/build

hello/CMakeFiles/hello.dir/clean:
	cd /home/codedu/Code/CmakeTest/build/hello && $(CMAKE_COMMAND) -P CMakeFiles/hello.dir/cmake_clean.cmake
.PHONY : hello/CMakeFiles/hello.dir/clean

hello/CMakeFiles/hello.dir/depend:
	cd /home/codedu/Code/CmakeTest/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/codedu/Code/CmakeTest /home/codedu/Code/CmakeTest/hello /home/codedu/Code/CmakeTest/build /home/codedu/Code/CmakeTest/build/hello /home/codedu/Code/CmakeTest/build/hello/CMakeFiles/hello.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : hello/CMakeFiles/hello.dir/depend
