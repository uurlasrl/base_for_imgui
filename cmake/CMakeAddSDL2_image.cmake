message(STATUS "INI Modulo SDL2_image ")

if( EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/SDL_image )
    set(SDL_image_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/SDL_image")
elseif( EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/SDL_image )
    set(SDL_image_DIR "${CMAKE_SOURCE_DIR}/../Libraries/SDL_image")
else()
    message( FATAL_ERROR "ERROR missing library SDL_image" )
endif()
add_subdirectory(${SDL_image_DIR} SDL2_image)

message(STATUS "Risultato: SLD2_image installed")

set(SDL2_image_LIBRARY SLD2_image)

#include_directories( ${SDL2_DIR}/include  )

message(STATUS "FIN Modulo SDL2_image")