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
CMAKE_SOURCE_DIR = "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/973_K_Closest_Points_to_Origin.dir/depend.make
# Include the progress variables for this target.
include CMakeFiles/973_K_Closest_Points_to_Origin.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/973_K_Closest_Points_to_Origin.dir/flags.make

CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.o: CMakeFiles/973_K_Closest_Points_to_Origin.dir/flags.make
CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.o: ../973\ K\ Closest\ Points\ to\ Origin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.o -c "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin/973 K Closest Points to Origin.cpp"

CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin/973 K Closest Points to Origin.cpp" > CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.i

CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin/973 K Closest Points to Origin.cpp" -o CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.s

# Object files for target 973_K_Closest_Points_to_Origin
973_K_Closest_Points_to_Origin_OBJECTS = \
"CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.o"

# External object files for target 973_K_Closest_Points_to_Origin
973_K_Closest_Points_to_Origin_EXTERNAL_OBJECTS =

973_K_Closest_Points_to_Origin: CMakeFiles/973_K_Closest_Points_to_Origin.dir/973_K_Closest_Points_to_Origin.cpp.o
973_K_Closest_Points_to_Origin: CMakeFiles/973_K_Closest_Points_to_Origin.dir/build.make
973_K_Closest_Points_to_Origin: CMakeFiles/973_K_Closest_Points_to_Origin.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable 973_K_Closest_Points_to_Origin"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/973_K_Closest_Points_to_Origin.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/973_K_Closest_Points_to_Origin.dir/build: 973_K_Closest_Points_to_Origin
.PHONY : CMakeFiles/973_K_Closest_Points_to_Origin.dir/build

CMakeFiles/973_K_Closest_Points_to_Origin.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/973_K_Closest_Points_to_Origin.dir/cmake_clean.cmake
.PHONY : CMakeFiles/973_K_Closest_Points_to_Origin.dir/clean

CMakeFiles/973_K_Closest_Points_to_Origin.dir/depend:
	cd "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin" "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin" "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin/cmake-build-debug" "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin/cmake-build-debug" "/Users/delta/Desktop/Leetcode Problems/Data Structure II/973 K Closest Points to Origin/cmake-build-debug/CMakeFiles/973_K_Closest_Points_to_Origin.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/973_K_Closest_Points_to_Origin.dir/depend

