# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "D:\Code C++\cmake_test"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "D:\Code C++\cmake_test\build"

# Include any dependencies generated for this target.
include CMakeFiles/cmake_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cmake_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cmake_test.dir/flags.make

CMakeFiles/cmake_test.dir/src/action_scope.cpp.obj: CMakeFiles/cmake_test.dir/flags.make
CMakeFiles/cmake_test.dir/src/action_scope.cpp.obj: CMakeFiles/cmake_test.dir/includes_CXX.rsp
CMakeFiles/cmake_test.dir/src/action_scope.cpp.obj: ../src/action_scope.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Code C++\cmake_test\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cmake_test.dir/src/action_scope.cpp.obj"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cmake_test.dir\src\action_scope.cpp.obj -c "D:\Code C++\cmake_test\src\action_scope.cpp"

CMakeFiles/cmake_test.dir/src/action_scope.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmake_test.dir/src/action_scope.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Code C++\cmake_test\src\action_scope.cpp" > CMakeFiles\cmake_test.dir\src\action_scope.cpp.i

CMakeFiles/cmake_test.dir/src/action_scope.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmake_test.dir/src/action_scope.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Code C++\cmake_test\src\action_scope.cpp" -o CMakeFiles\cmake_test.dir\src\action_scope.cpp.s

CMakeFiles/cmake_test.dir/src/analyzer.cpp.obj: CMakeFiles/cmake_test.dir/flags.make
CMakeFiles/cmake_test.dir/src/analyzer.cpp.obj: CMakeFiles/cmake_test.dir/includes_CXX.rsp
CMakeFiles/cmake_test.dir/src/analyzer.cpp.obj: ../src/analyzer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Code C++\cmake_test\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/cmake_test.dir/src/analyzer.cpp.obj"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cmake_test.dir\src\analyzer.cpp.obj -c "D:\Code C++\cmake_test\src\analyzer.cpp"

CMakeFiles/cmake_test.dir/src/analyzer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmake_test.dir/src/analyzer.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Code C++\cmake_test\src\analyzer.cpp" > CMakeFiles\cmake_test.dir\src\analyzer.cpp.i

CMakeFiles/cmake_test.dir/src/analyzer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmake_test.dir/src/analyzer.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Code C++\cmake_test\src\analyzer.cpp" -o CMakeFiles\cmake_test.dir\src\analyzer.cpp.s

CMakeFiles/cmake_test.dir/src/main.cpp.obj: CMakeFiles/cmake_test.dir/flags.make
CMakeFiles/cmake_test.dir/src/main.cpp.obj: CMakeFiles/cmake_test.dir/includes_CXX.rsp
CMakeFiles/cmake_test.dir/src/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Code C++\cmake_test\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/cmake_test.dir/src/main.cpp.obj"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cmake_test.dir\src\main.cpp.obj -c "D:\Code C++\cmake_test\src\main.cpp"

CMakeFiles/cmake_test.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmake_test.dir/src/main.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Code C++\cmake_test\src\main.cpp" > CMakeFiles\cmake_test.dir\src\main.cpp.i

CMakeFiles/cmake_test.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmake_test.dir/src/main.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Code C++\cmake_test\src\main.cpp" -o CMakeFiles\cmake_test.dir\src\main.cpp.s

CMakeFiles/cmake_test.dir/src/test.cpp.obj: CMakeFiles/cmake_test.dir/flags.make
CMakeFiles/cmake_test.dir/src/test.cpp.obj: CMakeFiles/cmake_test.dir/includes_CXX.rsp
CMakeFiles/cmake_test.dir/src/test.cpp.obj: ../src/test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Code C++\cmake_test\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/cmake_test.dir/src/test.cpp.obj"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cmake_test.dir\src\test.cpp.obj -c "D:\Code C++\cmake_test\src\test.cpp"

CMakeFiles/cmake_test.dir/src/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmake_test.dir/src/test.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Code C++\cmake_test\src\test.cpp" > CMakeFiles\cmake_test.dir\src\test.cpp.i

CMakeFiles/cmake_test.dir/src/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmake_test.dir/src/test.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Code C++\cmake_test\src\test.cpp" -o CMakeFiles\cmake_test.dir\src\test.cpp.s

CMakeFiles/cmake_test.dir/src/tokenizer.cpp.obj: CMakeFiles/cmake_test.dir/flags.make
CMakeFiles/cmake_test.dir/src/tokenizer.cpp.obj: CMakeFiles/cmake_test.dir/includes_CXX.rsp
CMakeFiles/cmake_test.dir/src/tokenizer.cpp.obj: ../src/tokenizer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="D:\Code C++\cmake_test\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/cmake_test.dir/src/tokenizer.cpp.obj"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cmake_test.dir\src\tokenizer.cpp.obj -c "D:\Code C++\cmake_test\src\tokenizer.cpp"

CMakeFiles/cmake_test.dir/src/tokenizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmake_test.dir/src/tokenizer.cpp.i"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "D:\Code C++\cmake_test\src\tokenizer.cpp" > CMakeFiles\cmake_test.dir\src\tokenizer.cpp.i

CMakeFiles/cmake_test.dir/src/tokenizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmake_test.dir/src/tokenizer.cpp.s"
	g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "D:\Code C++\cmake_test\src\tokenizer.cpp" -o CMakeFiles\cmake_test.dir\src\tokenizer.cpp.s

# Object files for target cmake_test
cmake_test_OBJECTS = \
"CMakeFiles/cmake_test.dir/src/action_scope.cpp.obj" \
"CMakeFiles/cmake_test.dir/src/analyzer.cpp.obj" \
"CMakeFiles/cmake_test.dir/src/main.cpp.obj" \
"CMakeFiles/cmake_test.dir/src/test.cpp.obj" \
"CMakeFiles/cmake_test.dir/src/tokenizer.cpp.obj"

# External object files for target cmake_test
cmake_test_EXTERNAL_OBJECTS =

cmake_test.exe: CMakeFiles/cmake_test.dir/src/action_scope.cpp.obj
cmake_test.exe: CMakeFiles/cmake_test.dir/src/analyzer.cpp.obj
cmake_test.exe: CMakeFiles/cmake_test.dir/src/main.cpp.obj
cmake_test.exe: CMakeFiles/cmake_test.dir/src/test.cpp.obj
cmake_test.exe: CMakeFiles/cmake_test.dir/src/tokenizer.cpp.obj
cmake_test.exe: CMakeFiles/cmake_test.dir/build.make
cmake_test.exe: CMakeFiles/cmake_test.dir/linklibs.rsp
cmake_test.exe: CMakeFiles/cmake_test.dir/objects1.rsp
cmake_test.exe: CMakeFiles/cmake_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="D:\Code C++\cmake_test\build\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable cmake_test.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cmake_test.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cmake_test.dir/build: cmake_test.exe

.PHONY : CMakeFiles/cmake_test.dir/build

CMakeFiles/cmake_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cmake_test.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cmake_test.dir/clean

CMakeFiles/cmake_test.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "D:\Code C++\cmake_test" "D:\Code C++\cmake_test" "D:\Code C++\cmake_test\build" "D:\Code C++\cmake_test\build" "D:\Code C++\cmake_test\build\CMakeFiles\cmake_test.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/cmake_test.dir/depend

