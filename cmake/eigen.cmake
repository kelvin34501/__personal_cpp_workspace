# get and include pattern
message(STATUS "ENV add dependency: eigen")

include(ExternalProject)
ExternalProject_Add(
    eigen
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/eigen
    GIT_REPOSITORY https://gitlab.com/libeigen/eigen.git
    GIT_TAG origin/master
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
