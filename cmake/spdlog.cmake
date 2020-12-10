# get and include pattern
message(STATUS "ENV add dependency: spdlog")

include(ExternalProject)
ExternalProject_Add(
    spdlog
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/spdlog
    GIT_REPOSITORY https://github.com/gabime/spdlog.git
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
