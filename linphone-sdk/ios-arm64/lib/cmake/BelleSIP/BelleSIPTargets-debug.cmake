#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "belle-sip" for configuration "Debug"
set_property(TARGET belle-sip APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(belle-sip PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/Frameworks/belle-sip.framework/belle-sip"
  IMPORTED_SONAME_DEBUG "@rpath/belle-sip.framework/belle-sip"
  )

list(APPEND _cmake_import_check_targets belle-sip )
list(APPEND _cmake_import_check_files_for_belle-sip "${_IMPORT_PREFIX}/Frameworks/belle-sip.framework/belle-sip" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
