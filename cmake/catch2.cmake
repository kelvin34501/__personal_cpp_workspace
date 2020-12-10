# get and include pattern
message(STATUS "ENV add dependency: catch2")

include(ExternalProject)
ExternalProject_Add(
    catch2
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG origin/devel
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
