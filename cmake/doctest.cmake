# get and include pattern
message(STATUS "ENV add dependency: doctest")

include(ExternalProject)
ExternalProject_Add(
    doctest
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/doctest
    GIT_REPOSITORY https://github.com/onqtam/doctest.git
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
