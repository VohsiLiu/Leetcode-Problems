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
CMAKE_SOURCE_DIR = "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/53_Maximum_Subarray.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/53_Maximum_Subarray.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/53_Maximum_Subarray.dir/flags.make

CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.o: CMakeFiles/53_Maximum_Subarray.dir/flags.make
CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.o: ../53\ Maximum\ Subarray.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.o -c "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray/53 Maximum Subarray.cpp"

CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray/53 Maximum Subarray.cpp" > CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.i

CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray/53 Maximum Subarray.cpp" -o CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.s

# Object files for target 53_Maximum_Subarray
53_Maximum_Subarray_OBJECTS = \
"CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.o"

# External object files for target 53_Maximum_Subarray
53_Maximum_Subarray_EXTERNAL_OBJECTS =

53_Maximum_Subarray: CMakeFiles/53_Maximum_Subarray.dir/53_Maximum_Subarray.cpp.o
53_Maximum_Subarray: CMakeFiles/53_Maximum_Subarray.dir/build.make
53_Maximum_Subarray: CMakeFiles/53_Maximum_Subarray.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 53_Maximum_Subarray"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/53_Maximum_Subarray.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/53_Maximum_Subarray.dir/build: 53_Maximum_Subarray
.PHONY : CMakeFiles/53_Maximum_Subarray.dir/build

CMakeFiles/53_Maximum_Subarray.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/53_Maximum_Subarray.dir/cmake_clean.cmake
.PHONY : CMakeFiles/53_Maximum_Subarray.dir/clean

CMakeFiles/53_Maximum_Subarray.dir/depend:
	cd "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray" "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray" "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray/cmake-build-debug" "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray/cmake-build-debug" "/Users/delta/Desktop/Leetcode/Data Structure/53 Maximum Subarray/cmake-build-debug/CMakeFiles/53_Maximum_Subarray.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/53_Maximum_Subarray.dir/depend

