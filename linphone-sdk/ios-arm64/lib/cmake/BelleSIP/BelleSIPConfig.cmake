############################################################################
# BelleSIPConfig.cmake
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
# Config file for the belle-sip package.
#
# Targets
# ^^^^^^^
#
# The following targets are defined:
#  belle-sip - The belle-sip library target
#  libbelle-sip-tester - The belle-sip-tester library target (defined if the tester is asked for)
#
#
# Result variables
# ^^^^^^^^^^^^^^^^
#
# This config file will set the following variables in your project:
#
#  BelleSIP_FOUND - The belle-sip library has been found
#  BelleSIP_TARGET - The name of the CMake target for the belle-sip library
#  BelleSIP_tester_FOUND - The belle-sip-tester library has been found
#  BelleSIP_tester_TARGET - The name of the CMake target for the libbelle-sip-tester library



####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was BelleSIPConfig.cmake.in                            ########

get_filename_component(PACKAGE_PREFIX_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../" ABSOLUTE)

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

include("${CMAKE_CURRENT_LIST_DIR}/BelleSIPTargets.cmake")

set(BelleSIP_TARGET belle-sip)

if(OFF)
        set(BelleSIP_tester_FOUND TRUE)
        set(BelleSIP_tester_TARGET libbelle-sip-tester)
endif()

# We must propagate the public dependencies and the private dependencies for static build
include(CMakeFindDependencyMacro)
find_dependency(Belr)
find_dependency(BCToolbox)
find_dependency(Threads) # For httplib
if(ON)
else()
	if(TRUE)
		find_dependency(ZLIB)
	endif()
	if()
		find_dependency(Tunnel)
	endif()
endif()

check_required_components(BelleSIP)
