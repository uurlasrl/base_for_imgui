message(STATUS "INI Modulo GLOG ")

if( EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/glog )
    set(GLOG_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/glog")
elseif( EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/glog )
    set(GLOG_DIR "${CMAKE_SOURCE_DIR}/../Libraries/glog")
else()
    message( FATAL_ERROR "missing library SDL2" )
endif()

if (${WIN32})
    add_subdirectory(${GLOG_DIR} glog)
else()
    include(${CMAKE_CURRENT_LIST_DIR}/CMakeAddGFLAG.cmake)
    add_subdirectory(${GLOG_DIR} glog)
endif ()

message(STATUS "Risultato:")
message(STATUS "GLOG_LIBRARIES:${GLOG_LIBRARIES}")
message(STATUS "GLOG_INCLUDE_DIRS:${GLOG_INCLUDE_DIRS}")
message(STATUS "GLOG:${GLOG_INCLUDE_DIRS}")



message(STATUS "FIN Modulo GLOG")