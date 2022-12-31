#usare glew-cmake
#https://github.com/Perlmint/glew-cmake
#https://github.com/Perlmint/glew-cmake.git

message(STATUS "INI Modulo glew ")

if (EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/glew)
    set(glew_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/glew")
elseif (EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/glew)
    set(glew_DIR "${CMAKE_SOURCE_DIR}/../Libraries/glew")
else ()
    message(FATAL_ERROR "ERROR missing library glew")
endif ()

#if (${BUILD_SHARED_LIBS})
#    set(GLEW_USE_STATIC_LIBS ON CACHE BOOL "" FORCE)
#else ()
#    set(GLEW_USE_STATIC_LIBS OFF CACHE BOOL "" FORCE)
#endif ()
find_package(OpenGL REQUIRED)
add_subdirectory(${glew_DIR} glew)

#if (${WIN32})
#    set(GLEW_INCLUDE_DIRS ${glew_DIR}/include)
#    if (${GLEW_USE_STATIC_LIBS})
#        set(GLEW_LIBRARIES ${glew_DIR}/lib/Release/x64/glew32s.lib) #static
#    else ()
#        set(GLEW_LIBRARIES ${glew_DIR}/lib/Release/x64/glew32.lib) #shared
#    endif ()
#else ()
#    #add_subdirectory(${glew_DIR}/build/cmake GLEW)
#endif ()
#
#message(STATUS "Variabili GLEW:")
#message(STATUS "GLEW_INCLUDE_DIRS:${GLEW_INCLUDE_DIRS}")
#message(STATUS "GLEW_LIBRARIES:${GLEW_LIBRARIES}")
#
#find_package(GLEW REQUIRED)


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

message(STATUS "FIN Modulo glew")