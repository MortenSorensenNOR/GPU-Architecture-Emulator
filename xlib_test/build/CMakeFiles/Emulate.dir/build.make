# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /home/morten/dev/GPU-Architecture-Emulator/xlib_test

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/morten/dev/GPU-Architecture-Emulator/xlib_test/build

# Include any dependencies generated for this target.
include CMakeFiles/Emulate.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Emulate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Emulate.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Emulate.dir/flags.make

CMakeFiles/Emulate.dir/main.cpp.o: CMakeFiles/Emulate.dir/flags.make
CMakeFiles/Emulate.dir/main.cpp.o: ../main.cpp
CMakeFiles/Emulate.dir/main.cpp.o: CMakeFiles/Emulate.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/morten/dev/GPU-Architecture-Emulator/xlib_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Emulate.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Emulate.dir/main.cpp.o -MF CMakeFiles/Emulate.dir/main.cpp.o.d -o CMakeFiles/Emulate.dir/main.cpp.o -c /home/morten/dev/GPU-Architecture-Emulator/xlib_test/main.cpp

CMakeFiles/Emulate.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Emulate.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/morten/dev/GPU-Architecture-Emulator/xlib_test/main.cpp > CMakeFiles/Emulate.dir/main.cpp.i

CMakeFiles/Emulate.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Emulate.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/morten/dev/GPU-Architecture-Emulator/xlib_test/main.cpp -o CMakeFiles/Emulate.dir/main.cpp.s

# Object files for target Emulate
Emulate_OBJECTS = \
"CMakeFiles/Emulate.dir/main.cpp.o"

# External object files for target Emulate
Emulate_EXTERNAL_OBJECTS =

Emulate: CMakeFiles/Emulate.dir/main.cpp.o
Emulate: CMakeFiles/Emulate.dir/build.make
Emulate: CMakeFiles/Emulate.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/morten/dev/GPU-Architecture-Emulator/xlib_test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Emulate"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Emulate.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Emulate.dir/build: Emulate
.PHONY : CMakeFiles/Emulate.dir/build

CMakeFiles/Emulate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Emulate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Emulate.dir/clean

CMakeFiles/Emulate.dir/depend:
	cd /home/morten/dev/GPU-Architecture-Emulator/xlib_test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/morten/dev/GPU-Architecture-Emulator/xlib_test /home/morten/dev/GPU-Architecture-Emulator/xlib_test /home/morten/dev/GPU-Architecture-Emulator/xlib_test/build /home/morten/dev/GPU-Architecture-Emulator/xlib_test/build /home/morten/dev/GPU-Architecture-Emulator/xlib_test/build/CMakeFiles/Emulate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Emulate.dir/depend

