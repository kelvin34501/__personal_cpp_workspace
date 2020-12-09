# get and include pattern
message(STATUS "ENV add dependency: glfw")

include(ExternalProject)
ExternalProject_Add(
    glfw
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/glfw
    GIT_REPOSITORY https://github.com/glfw/glfw.git
    GIT_TAG origin/master
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
