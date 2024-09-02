#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "bv16" for configuration "Debug"
set_property(TARGET bv16 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(bv16 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libbv16.a"
  )

list(APPEND _cmake_import_check_targets bv16 )
list(APPEND _cmake_import_check_files_for_bv16 "${_IMPORT_PREFIX}/lib/libbv16.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
