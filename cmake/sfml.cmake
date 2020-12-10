# get and include pattern
message(STATUS "ENV add dependency: sfml")

include(ExternalProject)
ExternalProject_Add(
    sfml
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/sfml
    GIT_REPOSITORY https://github.com/SFML/SFML.git
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
