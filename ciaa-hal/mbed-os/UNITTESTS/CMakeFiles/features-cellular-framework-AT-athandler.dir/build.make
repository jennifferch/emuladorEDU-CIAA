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
include CMakeFiles/features-cellular-framework-AT-athandler.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/features-cellular-framework-AT-athandler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make

CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.o: features/cellular/framework/AT/athandler/athandlertest.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/features/cellular/framework/AT/athandler/athandlertest.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/features/cellular/framework/AT/athandler/athandlertest.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/features/cellular/framework/AT/athandler/athandlertest.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.o: stubs/AT_CellularBase_stub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/AT_CellularBase_stub.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/AT_CellularBase_stub.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/AT_CellularBase_stub.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.o: stubs/EventQueue_stub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/EventQueue_stub.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/EventQueue_stub.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/EventQueue_stub.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.o: stubs/FileHandle_stub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/FileHandle_stub.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/FileHandle_stub.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/FileHandle_stub.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.o: stubs/us_ticker_stub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/us_ticker_stub.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/us_ticker_stub.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/us_ticker_stub.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.o: stubs/mbed_wait_api_stub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/mbed_wait_api_stub.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/mbed_wait_api_stub.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/mbed_wait_api_stub.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.o: stubs/mbed_assert_stub.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.o   -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/mbed_assert_stub.c

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/mbed_assert_stub.c > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/mbed_assert_stub.c -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.o: stubs/mbed_poll_stub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/mbed_poll_stub.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/mbed_poll_stub.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/mbed_poll_stub.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.o: stubs/Timer_stub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/Timer_stub.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/Timer_stub.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/Timer_stub.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.o: stubs/equeue_stub.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.o   -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/equeue_stub.c

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/equeue_stub.c > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/equeue_stub.c -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.o: stubs/Kernel_stub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/Kernel_stub.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/Kernel_stub.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/Kernel_stub.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.o: stubs/Thread_stub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/Thread_stub.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/Thread_stub.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/Thread_stub.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.s

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.o: CMakeFiles/features-cellular-framework-AT-athandler.dir/flags.make
CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.o: stubs/randLIB_stub.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.o -c /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/randLIB_stub.cpp

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/randLIB_stub.cpp > CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.i

CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs/randLIB_stub.cpp -o CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.s

# Object files for target features-cellular-framework-AT-athandler
features__cellular__framework__AT__athandler_OBJECTS = \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.o" \
"CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.o"

# External object files for target features-cellular-framework-AT-athandler
features__cellular__framework__AT__athandler_EXTERNAL_OBJECTS =

features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/features/cellular/framework/AT/athandler/athandlertest.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/AT_CellularBase_stub.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/EventQueue_stub.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/FileHandle_stub.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/us_ticker_stub.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_wait_api_stub.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_assert_stub.c.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/mbed_poll_stub.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Timer_stub.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/equeue_stub.c.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Kernel_stub.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/Thread_stub.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/stubs/randLIB_stub.cpp.o
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/build.make
features-cellular-framework-AT-athandler: googletest-build/googlemock/libgmock_main.a
features-cellular-framework-AT-athandler: libfeatures-cellular-framework-AT-athandler.MbedOS.a
features-cellular-framework-AT-athandler: googletest-build/googlemock/libgmock.a
features-cellular-framework-AT-athandler: googletest-build/googlemock/gtest/libgtest.a
features-cellular-framework-AT-athandler: CMakeFiles/features-cellular-framework-AT-athandler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Linking CXX executable features-cellular-framework-AT-athandler"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/features-cellular-framework-AT-athandler.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/features-cellular-framework-AT-athandler.dir/build: features-cellular-framework-AT-athandler

.PHONY : CMakeFiles/features-cellular-framework-AT-athandler.dir/build

CMakeFiles/features-cellular-framework-AT-athandler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/features-cellular-framework-AT-athandler.dir/cmake_clean.cmake
.PHONY : CMakeFiles/features-cellular-framework-AT-athandler.dir/clean

CMakeFiles/features-cellular-framework-AT-athandler.dir/depend:
	cd /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS /home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/CMakeFiles/features-cellular-framework-AT-athandler.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/features-cellular-framework-AT-athandler.dir/depend
