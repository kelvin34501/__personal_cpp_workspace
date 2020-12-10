# get and include pattern
message(STATUS "ENV add dependency: fmt")

include(ExternalProject)
ExternalProject_Add(
    fmt
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/fmt
    GIT_REPOSITORY https://github.com/fmtlib/fmt.git
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
