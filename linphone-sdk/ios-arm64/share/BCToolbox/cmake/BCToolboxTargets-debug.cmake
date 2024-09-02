#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "bctoolbox" for configuration "Debug"
set_property(TARGET bctoolbox APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(bctoolbox PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/Frameworks/bctoolbox.framework/bctoolbox"
  IMPORTED_SONAME_DEBUG "@rpath/bctoolbox.framework/bctoolbox"
  )

list(APPEND _cmake_import_check_targets bctoolbox )
list(APPEND _cmake_import_check_files_for_bctoolbox "${_IMPORT_PREFIX}/Frameworks/bctoolbox.framework/bctoolbox" )

# Import target "bctoolbox-tester" for configuration "Debug"
set_property(TARGET bctoolbox-tester APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(bctoolbox-tester PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/Frameworks/bctoolbox-tester.framework/bctoolbox-tester"
  IMPORTED_SONAME_DEBUG "@rpath/bctoolbox-tester.framework/bctoolbox-tester"
  )

list(APPEND _cmake_import_check_targets bctoolbox-tester )
list(APPEND _cmake_import_check_files_for_bctoolbox-tester "${_IMPORT_PREFIX}/Frameworks/bctoolbox-tester.framework/bctoolbox-tester" )

# Import target "bctoolbox-ios" for configuration "Debug"
set_property(TARGET bctoolbox-ios APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(bctoolbox-ios PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_DEBUG "bctoolbox"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/Frameworks/bctoolbox-ios.framework/bctoolbox-ios"
  IMPORTED_SONAME_DEBUG "@rpath/bctoolbox-ios.framework/bctoolbox-ios"
  )

list(APPEND _cmake_import_check_targets bctoolbox-ios )
list(APPEND _cmake_import_check_files_for_bctoolbox-ios "${_IMPORT_PREFIX}/Frameworks/bctoolbox-ios.framework/bctoolbox-ios" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
