message(STATUS "INI Modulo GFLAG ")

#if( EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/gflag )
#    set(GFLAG_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/gflag")
#elseif( EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/gflag )
#    set(GFLAG_DIR "${CMAKE_SOURCE_DIR}/../Libraries/gflag")
#else()
#    message( FATAL_ERROR "missing library gflag" )
#endif()

#add_subdirectory(${GLOG_DIR} gflag)

find_package(gflags 2.2.2 REQUIRED)

message(STATUS "Risultato:")
message(STATUS "GFLAG_LIBRARIES:${GFLAG_LIBRARIES}")
message(STATUS "GFLAG_INCLUDE_DIRS:${GFLAG_INCLUDE_DIRS}")
message(STATUS "GFLAG:${GFLAG_INCLUDE_DIRS}")


#include_directories( ${SDL2_DIR}/include  )

message(STATUS "FIN Modulo GFLAG")