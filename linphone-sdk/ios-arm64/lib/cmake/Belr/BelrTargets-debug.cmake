#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "belr" for configuration "Debug"
set_property(TARGET belr APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(belr PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/Frameworks/belr.framework/belr"
  IMPORTED_SONAME_DEBUG "@rpath/belr.framework/belr"
  )

list(APPEND _cmake_import_check_targets belr )
list(APPEND _cmake_import_check_files_for_belr "${_IMPORT_PREFIX}/Frameworks/belr.framework/belr" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
