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
CMAKE_COMMAND = /cygdrive/c/Users/Asus/AppData/Local/JetBrains/CLion2020.1/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/Asus/AppData/Local/JetBrains/CLion2020.1/cygwin_cmake/bin/cmake.exe -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Proyecto.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Proyecto.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Proyecto.dir/flags.make

CMakeFiles/Proyecto.dir/main.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Proyecto.dir/main.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/main.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/main.c

CMakeFiles/Proyecto.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/main.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/main.c > CMakeFiles/Proyecto.dir/main.c.i

CMakeFiles/Proyecto.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/main.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/main.c -o CMakeFiles/Proyecto.dir/main.c.s

CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.o: ../dyn/dyn_app_common.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_app_common.c

CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_app_common.c > CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.i

CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_app_common.c -o CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.s

CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.o: ../dyn/dyn_app_motors.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_app_motors.c

CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_app_motors.c > CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.i

CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_app_motors.c -o CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.s

CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.o: ../dyn/dyn_app_sensor.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_app_sensor.c

CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_app_sensor.c > CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.i

CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_app_sensor.c -o CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.s

CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.o: ../dyn/dyn_frames.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_frames.c

CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_frames.c > CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.i

CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_frames.c -o CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.s

CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.o: ../dyn/dyn_instr.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_instr.c

CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_instr.c > CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.i

CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn/dyn_instr.c -o CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.s

CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.o: ../dyn_test/movement_simulator.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn_test/movement_simulator.c

CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn_test/movement_simulator.c > CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.i

CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn_test/movement_simulator.c -o CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.s

CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.o: ../dyn_test/b_queue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn_test/b_queue.c

CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn_test/b_queue.c > CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.i

CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn_test/b_queue.c -o CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.s

CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.o: ../dyn_test/dyn_emu.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn_test/dyn_emu.c

CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn_test/dyn_emu.c > CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.i

CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/dyn_test/dyn_emu.c -o CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.s

CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.o: ../hal_dyn_uart/hal_dyn_uart_emu.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/hal_dyn_uart/hal_dyn_uart_emu.c

CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/hal_dyn_uart/hal_dyn_uart_emu.c > CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.i

CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/hal_dyn_uart/hal_dyn_uart_emu.c -o CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.s

CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.o: ../joystick_emu/joystick.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/joystick_emu/joystick.c

CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/joystick_emu/joystick.c > CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.i

CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/joystick_emu/joystick.c -o CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.s

CMakeFiles/Proyecto.dir/posicion.c.o: CMakeFiles/Proyecto.dir/flags.make
CMakeFiles/Proyecto.dir/posicion.c.o: ../posicion.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/Proyecto.dir/posicion.c.o"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Proyecto.dir/posicion.c.o   -c /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/posicion.c

CMakeFiles/Proyecto.dir/posicion.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Proyecto.dir/posicion.c.i"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/posicion.c > CMakeFiles/Proyecto.dir/posicion.c.i

CMakeFiles/Proyecto.dir/posicion.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Proyecto.dir/posicion.c.s"
	/usr/bin/gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/posicion.c -o CMakeFiles/Proyecto.dir/posicion.c.s

# Object files for target Proyecto
Proyecto_OBJECTS = \
"CMakeFiles/Proyecto.dir/main.c.o" \
"CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.o" \
"CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.o" \
"CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.o" \
"CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.o" \
"CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.o" \
"CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.o" \
"CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.o" \
"CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.o" \
"CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.o" \
"CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.o" \
"CMakeFiles/Proyecto.dir/posicion.c.o"

# External object files for target Proyecto
Proyecto_EXTERNAL_OBJECTS =

Proyecto.exe: CMakeFiles/Proyecto.dir/main.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/dyn/dyn_app_common.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/dyn/dyn_app_motors.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/dyn/dyn_app_sensor.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/dyn/dyn_frames.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/dyn/dyn_instr.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/dyn_test/movement_simulator.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/dyn_test/b_queue.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/dyn_test/dyn_emu.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/hal_dyn_uart/hal_dyn_uart_emu.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/joystick_emu/joystick.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/posicion.c.o
Proyecto.exe: CMakeFiles/Proyecto.dir/build.make
Proyecto.exe: CMakeFiles/Proyecto.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking C executable Proyecto.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Proyecto.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Proyecto.dir/build: Proyecto.exe

.PHONY : CMakeFiles/Proyecto.dir/build

CMakeFiles/Proyecto.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Proyecto.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Proyecto.dir/clean

CMakeFiles/Proyecto.dir/depend:
	cd /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug /cygdrive/c/Users/Asus/Desktop/ProgramacióArquitecturesEncastades/projecte/projectePAE/cmake-build-debug/CMakeFiles/Proyecto.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Proyecto.dir/depend

