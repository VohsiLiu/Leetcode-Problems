# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/566_Reshape_the_Matrix.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/566_Reshape_the_Matrix.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/566_Reshape_the_Matrix.dir/flags.make

CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.o: CMakeFiles/566_Reshape_the_Matrix.dir/flags.make
CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.o: ../566\ Reshape\ the\ Matrix.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.o -c "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix/566 Reshape the Matrix.cpp"

CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix/566 Reshape the Matrix.cpp" > CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.i

CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix/566 Reshape the Matrix.cpp" -o CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.s

# Object files for target 566_Reshape_the_Matrix
566_Reshape_the_Matrix_OBJECTS = \
"CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.o"

# External object files for target 566_Reshape_the_Matrix
566_Reshape_the_Matrix_EXTERNAL_OBJECTS =

566_Reshape_the_Matrix: CMakeFiles/566_Reshape_the_Matrix.dir/566_Reshape_the_Matrix.cpp.o
566_Reshape_the_Matrix: CMakeFiles/566_Reshape_the_Matrix.dir/build.make
566_Reshape_the_Matrix: CMakeFiles/566_Reshape_the_Matrix.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 566_Reshape_the_Matrix"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/566_Reshape_the_Matrix.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/566_Reshape_the_Matrix.dir/build: 566_Reshape_the_Matrix
.PHONY : CMakeFiles/566_Reshape_the_Matrix.dir/build

CMakeFiles/566_Reshape_the_Matrix.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/566_Reshape_the_Matrix.dir/cmake_clean.cmake
.PHONY : CMakeFiles/566_Reshape_the_Matrix.dir/clean

CMakeFiles/566_Reshape_the_Matrix.dir/depend:
	cd "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix" "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix" "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix/cmake-build-debug" "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix/cmake-build-debug" "/Users/delta/Desktop/Leetcode Problems/Data Structure/566 Reshape the Matrix/cmake-build-debug/CMakeFiles/566_Reshape_the_Matrix.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/566_Reshape_the_Matrix.dir/depend

