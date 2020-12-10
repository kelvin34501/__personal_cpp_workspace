# get and include pattern
message(STATUS "ENV add dependency: glm")

include(ExternalProject)
ExternalProject_Add(
    glm
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/glm
    GIT_REPOSITORY https://github.com/g-truc/glm.git
    GIT_PROGRESS TRUE
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
    INSTALL_COMMAND ${CMAKE_COMMAND} -E copy_directory <SOURCE_DIR>/glm <INSTALL_DIR>/include/glm
    COMMAND ${CMAKE_COMMAND} -E copy_directory <SOURCE_DIR>/cmake <INSTALL_DIR>/lib64/cmake
)
