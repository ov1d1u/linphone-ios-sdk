#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "bcunit" for configuration "Debug"
set_property(TARGET bcunit APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(bcunit PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libbcunit.a"
  )

list(APPEND _cmake_import_check_targets bcunit )
list(APPEND _cmake_import_check_files_for_bcunit "${_IMPORT_PREFIX}/lib/libbcunit.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
