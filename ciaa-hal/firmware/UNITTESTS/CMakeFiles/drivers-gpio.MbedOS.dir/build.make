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
CMAKE_SOURCE_DIR = /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS

# Include any dependencies generated for this target.
include CMakeFiles/drivers-gpio.MbedOS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/drivers-gpio.MbedOS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/drivers-gpio.MbedOS.dir/flags.make

CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.o: CMakeFiles/drivers-gpio.MbedOS.dir/flags.make
CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.o: /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.o   -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c

CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c > CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.i

CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c -o CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.s

# Object files for target drivers-gpio.MbedOS
drivers__gpio_MbedOS_OBJECTS = \
"CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.o"

# External object files for target drivers-gpio.MbedOS
drivers__gpio_MbedOS_EXTERNAL_OBJECTS =

libdrivers-gpio.MbedOS.a: CMakeFiles/drivers-gpio.MbedOS.dir/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/targets/TARGET_SIMULATOR/gpio_api.c.o
libdrivers-gpio.MbedOS.a: CMakeFiles/drivers-gpio.MbedOS.dir/build.make
libdrivers-gpio.MbedOS.a: CMakeFiles/drivers-gpio.MbedOS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libdrivers-gpio.MbedOS.a"
	$(CMAKE_COMMAND) -P CMakeFiles/drivers-gpio.MbedOS.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/drivers-gpio.MbedOS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/drivers-gpio.MbedOS.dir/build: libdrivers-gpio.MbedOS.a

.PHONY : CMakeFiles/drivers-gpio.MbedOS.dir/build

CMakeFiles/drivers-gpio.MbedOS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/drivers-gpio.MbedOS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/drivers-gpio.MbedOS.dir/clean

CMakeFiles/drivers-gpio.MbedOS.dir/depend:
	cd /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles/drivers-gpio.MbedOS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/drivers-gpio.MbedOS.dir/depend
