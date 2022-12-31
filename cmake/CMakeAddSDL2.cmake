message(STATUS "INI Modulo SDL2 ")
#if (${WIN32})
#    set(SDL2_DIR ${CMAKE_SOURCE_DIR}/../Libraries/SDL2)
#    add_subdirectory(${SDL2_DIR} SDL2)
#    # 1. Look for a SDL2 package, 2. look for the SDL2 component and 3. fail if none can be found
#
#    #find_package(SDL2 REQUIRED CONFIG REQUIRED COMPONENTS SDL2)
#    # 1. Look for a SDL2 package, 2. Look for the SDL2maincomponent and 3. DO NOT fail when SDL2main is not available
#    #find_package(SDL2 REQUIRED CONFIG COMPONENTS SDL2main)
#
#else ()
    if (EXISTS ${CMAKE_SOURCE_DIR}/../../Libraries/SDL2)
        set(SDL2_DIR "${CMAKE_SOURCE_DIR}/../../Libraries/SDL2")
    elseif (EXISTS ${CMAKE_SOURCE_DIR}/../Libraries/SDL2)
        set(SDL2_DIR "${CMAKE_SOURCE_DIR}/../Libraries/SDL2")
    else ()
        message(FATAL_ERROR "ERROR missing library SDL2")
    endif ()

    add_subdirectory(${SDL2_DIR} SDL2)
    set(SDL2_INCLUDE_DIRS ${SDL2_DIR}/include)
    if (NOT (DEFINED SDL2_LIBRARIES))
        set(SDL2_LIBRARIES SDL2::SDL2)
        #find_package(SDL2 REQUIRED COMPONENTS SDL2)
    endif ()


    message(STATUS "Risultato:")
    message(STATUS "SDL2_LIBRARIES:${SDL2_LIBRARIES}")
    message(STATUS "SDL2_INCLUDE_DIRS:${SDL2_INCLUDE_DIRS}")
    message(STATUS "SDL2:${SDL2_INCLUDE_DIRS}")


    #include_directories( ${SDL2_DIR}/include  )

#endif ()

message(STATUS "FIN Modulo SDL2")