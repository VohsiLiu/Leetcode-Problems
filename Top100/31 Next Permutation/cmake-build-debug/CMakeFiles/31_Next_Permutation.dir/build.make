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
CMAKE_SOURCE_DIR = "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/31_Next_Permutation.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/31_Next_Permutation.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/31_Next_Permutation.dir/flags.make

CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.o: CMakeFiles/31_Next_Permutation.dir/flags.make
CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.o: ../31\ Next\ Permutation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.o -c "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation/31 Next Permutation.cpp"

CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation/31 Next Permutation.cpp" > CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.i

CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation/31 Next Permutation.cpp" -o CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.s

# Object files for target 31_Next_Permutation
31_Next_Permutation_OBJECTS = \
"CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.o"

# External object files for target 31_Next_Permutation
31_Next_Permutation_EXTERNAL_OBJECTS =

31_Next_Permutation: CMakeFiles/31_Next_Permutation.dir/31_Next_Permutation.cpp.o
31_Next_Permutation: CMakeFiles/31_Next_Permutation.dir/build.make
31_Next_Permutation: CMakeFiles/31_Next_Permutation.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 31_Next_Permutation"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/31_Next_Permutation.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/31_Next_Permutation.dir/build: 31_Next_Permutation
.PHONY : CMakeFiles/31_Next_Permutation.dir/build

CMakeFiles/31_Next_Permutation.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/31_Next_Permutation.dir/cmake_clean.cmake
.PHONY : CMakeFiles/31_Next_Permutation.dir/clean

CMakeFiles/31_Next_Permutation.dir/depend:
	cd "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation" "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation" "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation/cmake-build-debug" "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation/cmake-build-debug" "/Users/delta/Desktop/Leetcode Problems/Top100/31 Next Permutation/cmake-build-debug/CMakeFiles/31_Next_Permutation.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/31_Next_Permutation.dir/depend

