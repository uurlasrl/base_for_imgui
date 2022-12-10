message(STATUS "INI Modulo soil2 ")

if( EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/soil2 )
    set(SOIL2_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/soil2")
elseif( EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/soil2 )
    set(SOIL2_DIR "${CMAKE_SOURCE_DIR}/../Libraries/soil2")
else()
    message( FATAL_ERROR "missing library SOIL2" )
endif()

add_subdirectory(${SOIL2_DIR} soil2)

#include_directories( ${SOIL2_DIR}/include)

message(STATUS "FIN Modulo soil2")