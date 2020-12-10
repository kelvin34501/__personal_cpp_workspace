# get and include pattern
message(STATUS "ENV add dependency: benchmark")

include(ExternalProject)

# need to find gtest source
ExternalProject_Add(
    benchmark
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/benchmark
    GIT_REPOSITORY https://github.com/google/benchmark.git
    GIT_TAG origin/master
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release -DGOOGLETEST_PATH=${PROJECT_SOURCE_DIR}/env_build/gtest/src/gtest
)

set(BENCHMARK_SRC_PATH ${PROJECT_SOURCE_DIR}/env_build/benchmark/src/benchmark)
