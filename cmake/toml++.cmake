# get and include toml++
message(STATUS "ENV add dependency: toml++")

include(ExternalProject)
ExternalProject_Add(
    toml++
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/toml++
    GIT_REPOSITORY https://github.com/marzer/tomlplusplus.git
    GIT_TAG origin/master
    GIT_PROGRESS TRUE
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    INSTALL_COMMAND ${CMAKE_COMMAND} -E copy_directory <SOURCE_DIR>/include <INSTALL_DIR>/include
)


