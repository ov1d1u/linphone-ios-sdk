#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mediastreamer2" for configuration "Debug"
set_property(TARGET mediastreamer2 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(mediastreamer2 PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/Frameworks/mediastreamer2.framework/mediastreamer2"
  IMPORTED_SONAME_DEBUG "@rpath/mediastreamer2.framework/mediastreamer2"
  )

list(APPEND _cmake_import_check_targets mediastreamer2 )
list(APPEND _cmake_import_check_files_for_mediastreamer2 "${_IMPORT_PREFIX}/Frameworks/mediastreamer2.framework/mediastreamer2" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
