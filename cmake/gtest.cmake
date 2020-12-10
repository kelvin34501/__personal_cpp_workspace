# get and include pattern
message(STATUS "ENV add dependency: gtest")

include(ExternalProject)
ExternalProject_Add(
    gtest
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/gtest
    GIT_REPOSITORY https://github.com/google/googletest.git
    GIT_TAG origin/master
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)

set(GTEST_SRC_PATH ${PROJECT_SOURCE_DIR}/env_build/gtest/src/gtest)
