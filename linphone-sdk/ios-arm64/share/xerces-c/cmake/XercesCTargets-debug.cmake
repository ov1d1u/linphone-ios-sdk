#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "xerces-c" for configuration "Debug"
set_property(TARGET xerces-c APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(xerces-c PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C;CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libxerces-c.a"
  )

list(APPEND _cmake_import_check_targets xerces-c )
list(APPEND _cmake_import_check_files_for_xerces-c "${_IMPORT_PREFIX}/lib/libxerces-c.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
