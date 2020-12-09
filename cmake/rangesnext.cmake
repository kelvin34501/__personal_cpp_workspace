# get and include pattern
message(STATUS "ENV add dependency: rangesnext")

include(ExternalProject)
ExternalProject_Add(
    rangesnext
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/rangesnext
    GIT_REPOSITORY https://github.com/cor3ntin/rangesnext.git
    GIT_TAG origin/master
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    INSTALL_COMMAND ${CMAKE_COMMAND} -E copy_directory <SOURCE_DIR>/include <INSTALL_DIR>/include
)
