# get and include sdl2
message(STATUS "ENV add dependency: sdl2")

include(ExternalProject)
ExternalProject_Add(
    sdl2
    PREFIX ${PROJECT_SOURCE_DIR}/env_build/sdl2
    URL "https://www.libsdl.org/release/SDL2-${ENV_SDL2_VERSION}.tar.gz"
    INSTALL_DIR ${PROJECT_SOURCE_DIR}/env
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=<INSTALL_DIR> -DCMAKE_BUILD_TYPE=Release
)
