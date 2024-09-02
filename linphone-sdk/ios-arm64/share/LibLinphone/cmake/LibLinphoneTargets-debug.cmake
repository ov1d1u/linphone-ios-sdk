#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "liblinphone" for configuration "Debug"
set_property(TARGET liblinphone APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(liblinphone PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "bctoolbox;belr;belcard"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/Frameworks/linphone.framework/linphone"
  IMPORTED_SONAME_DEBUG "@rpath/linphone.framework/linphone"
  )

list(APPEND _cmake_import_check_targets liblinphone )
list(APPEND _cmake_import_check_files_for_liblinphone "${_IMPORT_PREFIX}/Frameworks/linphone.framework/linphone" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
