message(STATUS "INI Modulo SDL2_mixer ")

if( EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/SDL_mixer )
    set(SDL_mixer_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/SDL_mixer")
elseif( EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/SDL_mixer )
    set(SDL_mixer_DIR "${CMAKE_SOURCE_DIR}/../Libraries/SDL_mixer")
else()
    message( FATAL_ERROR "ERROR missing library SDL_mixer" )
endif()






#add_library(SDL2)
#target_link_libraries(SDL2 PUBLIC ${SDL2_LIBRARIES})


#add_subdirectory(${SDL_mixer_DIR}/../doxygen doxygen)
#add_subdirectory(${SDL_mixer_DIR}/../libxmp libxmp)
add_subdirectory(${SDL_mixer_DIR}/../fluidsynth fluidsynth)
#add_subdirectory(${SDL_mixer_DIR}/external/opus opus)
#add_subdirectory(${SDL_mixer_DIR}/external/opusfile opusfile)

#set(libxmp_LIBRARY  xmp_static)
#set(libxmp_INCLUDE_PATH ${SDL_mixer_DIR}/../libxmp)
set(FluidSynth_INCLUDE_PATH ${SDL_mixer_DIR}/../fluidsynth/include)
set(FluidSynth_LIBRARY FluidSynth::FluidSynth)

add_subdirectory(${SDL_mixer_DIR} SDL2_mixer)

set(SDL_mixer_INCLUDE_DIRS ${SDL_mixer_DIR}/include)

message(STATUS "Risultato: SLD2_mixer installed")

if(${BUILD_SHARED_LIBS})
    set(SDL_mixer_LIBRARY SDL2_mixer::SDL2_mixer)
else()
    set(SDL_mixer_LIBRARY SDL2_mixer::SDL2_mixer-static)
endif()



#include_directories( ${SDL2_DIR}/include  )

message(STATUS "FIN Modulo SDL2_mixer")