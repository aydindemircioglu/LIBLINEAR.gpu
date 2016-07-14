# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/drunkeneye/LIBLINEAR.gpu

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/drunkeneye/LIBLINEAR.gpu

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"Unspecified\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: install/local

.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: install/strip

.PHONY : install/strip/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/drunkeneye/LIBLINEAR.gpu/CMakeFiles /home/drunkeneye/LIBLINEAR.gpu/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/drunkeneye/LIBLINEAR.gpu/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named train

# Build rule for target.
train: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 train
.PHONY : train

# fast build rule for target.
train/fast:
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/build
.PHONY : train/fast

#=============================================================================
# Target rules for targets named blas

# Build rule for target.
blas: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 blas
.PHONY : blas

# fast build rule for target.
blas/fast:
	$(MAKE) -f blas/CMakeFiles/blas.dir/build.make blas/CMakeFiles/blas.dir/build
.PHONY : blas/fast

linear.o: linear.cpp.o

.PHONY : linear.o

# target to build an object file
linear.cpp.o:
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/linear.cpp.o
.PHONY : linear.cpp.o

linear.i: linear.cpp.i

.PHONY : linear.i

# target to preprocess a source file
linear.cpp.i:
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/linear.cpp.i
.PHONY : linear.cpp.i

linear.s: linear.cpp.s

.PHONY : linear.s

# target to generate assembly for a file
linear.cpp.s:
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/linear.cpp.s
.PHONY : linear.cpp.s

train.o: train.cpp.o

.PHONY : train.o

# target to build an object file
train.cpp.o:
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/train.cpp.o
.PHONY : train.cpp.o

train.i: train.cpp.i

.PHONY : train.i

# target to preprocess a source file
train.cpp.i:
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/train.cpp.i
.PHONY : train.cpp.i

train.s: train.cpp.s

.PHONY : train.s

# target to generate assembly for a file
train.cpp.s:
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/train.cpp.s
.PHONY : train.cpp.s

tron.o: tron.cpp.o

.PHONY : tron.o

# target to build an object file
tron.cpp.o:
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/tron.cpp.o
.PHONY : tron.cpp.o

tron.i: tron.cpp.i

.PHONY : tron.i

# target to preprocess a source file
tron.cpp.i:
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/tron.cpp.i
.PHONY : tron.cpp.i

tron.s: tron.cpp.s

.PHONY : tron.s

# target to generate assembly for a file
tron.cpp.s:
	$(MAKE) -f CMakeFiles/train.dir/build.make CMakeFiles/train.dir/tron.cpp.s
.PHONY : tron.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install"
	@echo "... list_install_components"
	@echo "... rebuild_cache"
	@echo "... train"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... edit_cache"
	@echo "... blas"
	@echo "... linear.o"
	@echo "... linear.i"
	@echo "... linear.s"
	@echo "... train.o"
	@echo "... train.i"
	@echo "... train.s"
	@echo "... tron.o"
	@echo "... tron.i"
	@echo "... tron.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

