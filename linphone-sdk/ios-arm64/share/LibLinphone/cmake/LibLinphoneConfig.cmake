############################################################################
# LibLinphoneConfig.cmake
# Copyright (C) 2015-2023  Belledonne Communications, Grenoble France
#
############################################################################
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
############################################################################
#
# Config file for the liblinphone package.
#
# Targets
# ^^^^^^^
#
# The following targets are defined:
#  liblinphone - The liblinphone library target
#
#
# Result variables
# ^^^^^^^^^^^^^^^^
#
# This config file will set the following variables in your project:
#
#  LibLinphone_FOUND - The liblinphone library has been found
#  LibLinphone_TARGET - The name of the CMake target for the liblinphone library
#  LibLinphone_PLUGINS_DIR - The directory where to install liblinphone plugins



####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was LibLinphoneConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

macro(set_and_check _var _file)
  set(${_var} "${_file}")
  if(NOT EXISTS "${_file}")
    message(FATAL_ERROR "File or directory ${_file} referenced by variable ${_var} does not exist !")
  endif()
endmacro()

macro(check_required_components _NAME)
  foreach(comp ${${_NAME}_FIND_COMPONENTS})
    if(NOT ${_NAME}_${comp}_FOUND)
      if(${_NAME}_FIND_REQUIRED_${comp})
        set(${_NAME}_FOUND FALSE)
      endif()
    endif()
  endforeach()
endmacro()

####################################################################################

include("${CMAKE_CURRENT_LIST_DIR}/LibLinphoneTargets.cmake")

set(LibLinphone_TARGET liblinphone)
set_and_check(LibLinphone_PLUGINS_DIR "${PACKAGE_PREFIX_DIR}/lib/liblinphone/plugins")

# We must propagate the public dependencies and the private dependencies for static build
include(CMakeFindDependencyMacro)
find_dependency(BelleSIP)
find_dependency(Mediastreamer2)
find_dependency(Ortp)
if(TRUE)
	find_dependency(SQLite3)
endif()
if(TRUE)
	find_dependency(LibXml2)
endif()
if(TRUE)
	find_dependency(Lime)
endif()
if(ON)
else()
	list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")
	if(TRUE)
		find_dependency(BelCard)
	endif()
	find_dependency(BCToolbox)
	find_dependency(Belr)
	if(TRUE)
		find_dependency(XercesC)
	endif()
	if(TRUE)
		find_dependency(Soci)
	endif()
	if(TRUE)
		find_dependency(ZLIB)
	endif()
	if()
		find_dependency(Tunnel)
	endif()
	if(TRUE)
		find_dependency(BZRTP)
	endif()
	if(TRUE)
		find_dependency(OpenLDAP)
	endif()
	if(TRUE)
		find_dependency(ZXing)
	endif()
	if(TRUE)
		find_dependency(TurboJpeg)
	endif()
endif()

check_required_components(LibLinphone)
