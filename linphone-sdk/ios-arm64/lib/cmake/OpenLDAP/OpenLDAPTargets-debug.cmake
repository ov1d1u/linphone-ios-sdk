#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "ldap" for configuration "Debug"
set_property(TARGET ldap APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(ldap PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libldap.a"
  )

list(APPEND _cmake_import_check_targets ldap )
list(APPEND _cmake_import_check_files_for_ldap "${_IMPORT_PREFIX}/lib/libldap.a" )

# Import target "lber" for configuration "Debug"
set_property(TARGET lber APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(lber PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "C"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/liblber.a"
  )

list(APPEND _cmake_import_check_targets lber )
list(APPEND _cmake_import_check_files_for_lber "${_IMPORT_PREFIX}/lib/liblber.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
