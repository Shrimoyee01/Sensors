# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/student/Sensors

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/student/Sensors/build

# Include any dependencies generated for this target.
include CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/flags.make

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/flags.make
CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o: ../gripper.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/student/Sensors/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o -c /home/student/Sensors/gripper.cpp

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/student/Sensors/gripper.cpp > CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.i

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/student/Sensors/gripper.cpp -o CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.s

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o.requires:

.PHONY : CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o.requires

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o.provides: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o.requires
	$(MAKE) -f CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/build.make CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o.provides.build
.PHONY : CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o.provides

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o.provides.build: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o


CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/flags.make
CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o: ../sensorprocessing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/student/Sensors/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o -c /home/student/Sensors/sensorprocessing.cpp

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/student/Sensors/sensorprocessing.cpp > CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.i

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/student/Sensors/sensorprocessing.cpp -o CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.s

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o.requires:

.PHONY : CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o.requires

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o.provides: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o.requires
	$(MAKE) -f CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/build.make CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o.provides.build
.PHONY : CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o.provides

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o.provides.build: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o


# Object files for target sensors_project2_fetchrobotgrasping_processes
sensors_project2_fetchrobotgrasping_processes_OBJECTS = \
"CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o" \
"CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o"

# External object files for target sensors_project2_fetchrobotgrasping_processes
sensors_project2_fetchrobotgrasping_processes_EXTERNAL_OBJECTS =

devel/lib/libsensors_project2_fetchrobotgrasping_processes.so: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o
devel/lib/libsensors_project2_fetchrobotgrasping_processes.so: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o
devel/lib/libsensors_project2_fetchrobotgrasping_processes.so: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/build.make
devel/lib/libsensors_project2_fetchrobotgrasping_processes.so: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/student/Sensors/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library devel/lib/libsensors_project2_fetchrobotgrasping_processes.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/build: devel/lib/libsensors_project2_fetchrobotgrasping_processes.so

.PHONY : CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/build

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/requires: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/gripper.cpp.o.requires
CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/requires: CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/sensorprocessing.cpp.o.requires

.PHONY : CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/requires

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/clean

CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/depend:
	cd /home/student/Sensors/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/student/Sensors /home/student/Sensors /home/student/Sensors/build /home/student/Sensors/build /home/student/Sensors/build/CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sensors_project2_fetchrobotgrasping_processes.dir/depend
