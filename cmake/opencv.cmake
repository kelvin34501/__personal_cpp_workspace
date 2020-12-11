# get and include pattern
message(STATUS "ENV add dependency: opencv")

include(ExternalProject)
ExternalProject_Add(
    opencv
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/opencv
    GIT_REPOSITORY https://github.com/opencv/opencv.git
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
