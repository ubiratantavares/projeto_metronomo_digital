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
CMAKE_SOURCE_DIR = /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-build

# Include any dependencies generated for this target.
include CMakeFiles/picotool.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/picotool.dir/compiler_depend.make

# Include the compile flags for this target's objects.
include CMakeFiles/picotool.dir/flags.make

CMakeFiles/picotool.dir/data_locs.cpp.o: CMakeFiles/picotool.dir/flags.make
CMakeFiles/picotool.dir/data_locs.cpp.o: data_locs.cpp
CMakeFiles/picotool.dir/data_locs.cpp.o: CMakeFiles/picotool.dir/compiler_depend.ts
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/picotool.dir/data_locs.cpp.o -MF CMakeFiles/picotool.dir/data_locs.cpp.o.d -o CMakeFiles/picotool.dir/data_locs.cpp.o -c /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-build/data_locs.cpp

CMakeFiles/picotool.dir/data_locs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/picotool.dir/data_locs.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-build/data_locs.cpp > CMakeFiles/picotool.dir/data_locs.cpp.i

CMakeFiles/picotool.dir/data_locs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/picotool.dir/data_locs.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-build/data_locs.cpp -o CMakeFiles/picotool.dir/data_locs.cpp.s

CMakeFiles/picotool.dir/no_otp.cpp.o: CMakeFiles/picotool.dir/flags.make
CMakeFiles/picotool.dir/no_otp.cpp.o: /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/no_otp.cpp
CMakeFiles/picotool.dir/no_otp.cpp.o: CMakeFiles/picotool.dir/compiler_depend.ts
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/picotool.dir/no_otp.cpp.o -MF CMakeFiles/picotool.dir/no_otp.cpp.o.d -o CMakeFiles/picotool.dir/no_otp.cpp.o -c /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/no_otp.cpp

CMakeFiles/picotool.dir/no_otp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/picotool.dir/no_otp.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/no_otp.cpp > CMakeFiles/picotool.dir/no_otp.cpp.i

CMakeFiles/picotool.dir/no_otp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/picotool.dir/no_otp.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/no_otp.cpp -o CMakeFiles/picotool.dir/no_otp.cpp.s

CMakeFiles/picotool.dir/main.cpp.o: CMakeFiles/picotool.dir/flags.make
CMakeFiles/picotool.dir/main.cpp.o: /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/main.cpp
CMakeFiles/picotool.dir/main.cpp.o: CMakeFiles/picotool.dir/compiler_depend.ts
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/picotool.dir/main.cpp.o -MF CMakeFiles/picotool.dir/main.cpp.o.d -o CMakeFiles/picotool.dir/main.cpp.o -c /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/main.cpp

CMakeFiles/picotool.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/picotool.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/main.cpp > CMakeFiles/picotool.dir/main.cpp.i

CMakeFiles/picotool.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/picotool.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/main.cpp -o CMakeFiles/picotool.dir/main.cpp.s

CMakeFiles/picotool.dir/lib/whereami/whereami.c.o: CMakeFiles/picotool.dir/flags.make
CMakeFiles/picotool.dir/lib/whereami/whereami.c.o: /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/lib/whereami/whereami.c
CMakeFiles/picotool.dir/lib/whereami/whereami.c.o: CMakeFiles/picotool.dir/compiler_depend.ts
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/picotool.dir/lib/whereami/whereami.c.o -MF CMakeFiles/picotool.dir/lib/whereami/whereami.c.o.d -o CMakeFiles/picotool.dir/lib/whereami/whereami.c.o -c /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/lib/whereami/whereami.c

CMakeFiles/picotool.dir/lib/whereami/whereami.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/picotool.dir/lib/whereami/whereami.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/lib/whereami/whereami.c > CMakeFiles/picotool.dir/lib/whereami/whereami.c.i

CMakeFiles/picotool.dir/lib/whereami/whereami.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/picotool.dir/lib/whereami/whereami.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/lib/whereami/whereami.c -o CMakeFiles/picotool.dir/lib/whereami/whereami.c.s

CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.o: CMakeFiles/picotool.dir/flags.make
CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.o: /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/lib/whereami/whereami++.cpp
CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.o: CMakeFiles/picotool.dir/compiler_depend.ts
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.o -MF CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.o.d -o CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.o -c /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/lib/whereami/whereami++.cpp

CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/lib/whereami/whereami++.cpp > CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.i

CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src/lib/whereami/whereami++.cpp -o CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.s

# Object files for target picotool
picotool_OBJECTS = \
"CMakeFiles/picotool.dir/data_locs.cpp.o" \
"CMakeFiles/picotool.dir/no_otp.cpp.o" \
"CMakeFiles/picotool.dir/main.cpp.o" \
"CMakeFiles/picotool.dir/lib/whereami/whereami.c.o" \
"CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.o"

# External object files for target picotool
picotool_EXTERNAL_OBJECTS =

picotool: CMakeFiles/picotool.dir/data_locs.cpp.o
picotool: CMakeFiles/picotool.dir/no_otp.cpp.o
picotool: CMakeFiles/picotool.dir/main.cpp.o
picotool: CMakeFiles/picotool.dir/lib/whereami/whereami.c.o
picotool: CMakeFiles/picotool.dir/lib/whereami/whereami++.cpp.o
picotool: CMakeFiles/picotool.dir/build.make
picotool: bintool/libbintool.a
picotool: elf2uf2/libelf2uf2.a
picotool: errors/liberrors.a
picotool: lib/mbedtls/library/libmbedtls.a
picotool: lib/mbedtls/library/libmbedx509.a
picotool: lib/mbedtls/library/libmbedcrypto.a
picotool: elf/libelf.a
picotool: errors/liberrors.a
picotool: CMakeFiles/picotool.dir/link.txt
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/picotool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/picotool.dir/build: picotool
.PHONY : CMakeFiles/picotool.dir/build

CMakeFiles/picotool.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/picotool.dir/cmake_clean.cmake
.PHONY : CMakeFiles/picotool.dir/clean

CMakeFiles/picotool.dir/depend:
	cd /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-src /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-build /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-build /home/bira/pico/projeto_metronomo_digital/build/_deps/picotool-build/CMakeFiles/picotool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/picotool.dir/depend

