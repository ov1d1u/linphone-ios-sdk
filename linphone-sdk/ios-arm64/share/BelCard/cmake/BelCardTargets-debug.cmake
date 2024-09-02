#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "belcard" for configuration "Debug"
set_property(TARGET belcard APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(belcard PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "bctoolbox"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/Frameworks/belcard.framework/belcard"
  IMPORTED_SONAME_DEBUG "@rpath/belcard.framework/belcard"
  )

list(APPEND _cmake_import_check_targets belcard )
list(APPEND _cmake_import_check_files_for_belcard "${_IMPORT_PREFIX}/Frameworks/belcard.framework/belcard" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
