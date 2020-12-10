# get and include pattern
message(STATUS "ENV add dependency: celero")

include(ExternalProject)
ExternalProject_Add(
    celero
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/celero
    GIT_REPOSITORY https://github.com/DigitalInBlue/Celero.git
    GIT_TAG origin/master
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
