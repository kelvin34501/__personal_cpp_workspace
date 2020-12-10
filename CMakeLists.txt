# ====== specify cmake related config >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
cmake_minimum_required(VERSION 3.16)
# <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

# ====== project related >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# declare project
project(
  "personal_cpp_workspace"
  VERSION 0.0.1
  LANGUAGES CXX)

# set project options
message(STATUS "Started CMake for ${PROJECT_NAME} v${PROJECT_VERSION}...")

# set alternative names
if(${PROJECT_NAME}_USE_ALT_NAMES)
  string(TOLOWER ${PROJECT_NAME} PROJECT_NAME_LOWERCASE)
  string(TOUPPER ${PROJECT_NAME} PROJECT_NAME_UPPERCASE)
else()
  set(PROJECT_NAME_LOWERCASE ${PROJECT_NAME})
  set(PROJECT_NAME_UPPERCASE ${PROJECT_NAME})
endif()

# prevent building in src dir
if(PROJECT_SOURCE_DIR STREQUAL PROJECT_BINARY_DIR)
  message(
    FATAL_ERROR
      "In-source builds not allowed. Please make a new directory (called a build directory) and run CMake from there.\n"
  )
endif()

# set environment spec
set(WORKSPACE_PATH ${PROJECT_SOURCE_DIR}/env)
set(WORKSPACE_INCLUDE ${PROJECT_SOURCE_DIR}/env/include)

# add dependencies
include(cmake/gtest.cmake)
message(STATUS "[gtest] src: ${GTEST_SRC_PATH}")
include(cmake/benchmark.cmake)
message(STATUS "[benchmark] src: ${BENCHMARK_SRC_PATH}")
include(cmake/doctest.cmake)
include(cmake/catch2.cmake)
include(cmake/celero.cmake)

include(cmake/spdlog.cmake)
include(cmake/fmt.cmake)

include(cmake/toml++.cmake)

include(cmake/eigen.cmake)

include(cmake/glfw.cmake)

set(ENV_SDL2_VERSION "2.0.12")
include(cmake/sdl2.cmake)

include(cmake/pattern.cmake)
include(cmake/rangesnext.cmake)

# get a null target
add_custom_target(${PROJECT_NAME})
# <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

