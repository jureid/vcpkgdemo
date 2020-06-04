_find_package(${ARGS})

find_package(ZLIB)

if(ON)
    find_package(BZip2)
endif()

if(ON)
    find_package(PNG)
endif()

if(TARGET Freetype::Freetype)
    set_property(TARGET Freetype::Freetype APPEND PROPERTY INTERFACE_LINK_LIBRARIES ZLIB::ZLIB)

    if(ON)
        set_property(TARGET Freetype::Freetype APPEND PROPERTY INTERFACE_LINK_LIBRARIES BZip2::BZip2)
    endif()

    if(ON)
        set_property(TARGET Freetype::Freetype APPEND PROPERTY INTERFACE_LINK_LIBRARIES PNG::PNG)
    endif()
endif()

if(FREETYPE_LIBRARIES)
    list(APPEND FREETYPE_LIBRARIES ${ZLIB_LIBRARIES})

    if(ON)
        list(APPEND FREETYPE_LIBRARIES ${BZIP2_LIBRARIES})
    endif()

    if(ON)
        list(APPEND FREETYPE_LIBRARIES ${PNG_LIBRARIES})
    endif()
endif()
