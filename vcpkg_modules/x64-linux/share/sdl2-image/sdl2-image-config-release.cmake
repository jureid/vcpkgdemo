#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "SDL2::SDL2_image" for configuration "Release"
set_property(TARGET SDL2::SDL2_image APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(SDL2::SDL2_image PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "C"
  IMPORTED_LINK_INTERFACE_LIBRARIES_RELEASE "SDL2::SDL2;${_IMPORT_PREFIX}/lib/libpng.a;${_IMPORT_PREFIX}/lib/libz.a"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libSDL2_image.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS SDL2::SDL2_image )
list(APPEND _IMPORT_CHECK_FILES_FOR_SDL2::SDL2_image "${_IMPORT_PREFIX}/lib/libSDL2_image.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
