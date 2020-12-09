# get and include pattern
message(STATUS "ENV add dependency: pattern")

include(ExternalProject)
ExternalProject_Add(
    pattern
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/pattern
    GIT_REPOSITORY https://github.com/mpark/patterns.git
    GIT_TAG origin/master
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
