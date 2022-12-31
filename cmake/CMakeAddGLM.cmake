#https://github.com/g-truc/glm.git

message(STATUS "INI Modulo glm ")

if( EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/glm )
    set(glm_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/glm")
elseif( EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/glm )
    set(glm_DIR "${CMAKE_SOURCE_DIR}/../Libraries/glm")
else()
    message( FATAL_ERROR "ERROR missing library glm" )
endif()

add_subdirectory(${glm_DIR} glm)
#set(glew_INCLUDE_DIRS ${glew_DIR}/include)
#if(NOT ( DEFINED SDL2_LIBRARIES ) )
#    set(SDL2_LIBRARIES SDL2::SDL2)
#find_package(SDL2 REQUIRED COMPONENTS SDL2)
#endif()


#message(STATUS "Risultato:")
#message(STATUS "SDL2_LIBRARIES:${SDL2_LIBRARIES}")
#message(STATUS "SDL2_INCLUDE_DIRS:${SDL2_INCLUDE_DIRS}")
#message(STATUS "SDL2:${SDL2_INCLUDE_DIRS}")


#include_directories( ${SDL2_DIR}/include  )

message(STATUS "FIN Modulo glm")