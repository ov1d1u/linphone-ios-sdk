############################################################################
# Mediastreamer2Config.cmake
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
# Config file for the mediastreamer2 package.
#
# Targets
# ^^^^^^^
#
# The following targets are defined:
#  mediastreamer2 - The mediastreamer2 library target
#
#
# Result variables
# ^^^^^^^^^^^^^^^^
#
# This config file will set the following variables in your project:
#
#  Mediastreamer2_FOUND - The mediastreamer2 library has been found
#  Mediastreamer2_TARGET - The name of the CMake target for the mediastreamer2 library
#  Mediastreamer2_PLUGINS_DIR - The directory where to install mediastreamer2 plugins



####### Expanded from @PACKAGE_INIT@ by configure_package_config_file() #######
####### Any changes to this file will be overwritten by the next CMake run ####
####### The input file was Mediastreamer2Config.cmake.in                            ########

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

include("${CMAKE_CURRENT_LIST_DIR}/Mediastreamer2Targets.cmake")

set(Mediastreamer2_TARGET mediastreamer2)
set_and_check(Mediastreamer2_PLUGINS_DIR "${PACKAGE_PREFIX_DIR}/lib/mediastreamer/plugins")

# We must propagate the public dependencies and the private dependencies for static build
include(CMakeFindDependencyMacro)
find_dependency(Ortp)
find_dependency(BCToolbox)
if(ON)
else()
	list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}")
	if()
		find_dependency(PCAP)
	endif()
	if(TRUE)
		find_dependency(SRTP)
	endif()
	if(TRUE)
		find_dependency(BZRTP)
	endif()
	if()
		find_dependency(SpanDSP)
	endif()
	if(TRUE)
		find_dependency(GSM)
	endif()
	if(TRUE)
		find_dependency(BV16)
	endif()
	if(TRUE)
		find_dependency(Opus)
	endif()
	if(TRUE)
		find_dependency(Speex)
	endif()
	if(TRUE)
		find_dependency(SpeexDSP)
	endif()
	if()
		find_dependency(ALSA)
	endif()
	if()
		find_dependency(Arts)
	endif()
	if()
		find_dependency(PortAudio)
	endif()
	if()
		find_dependency(PulseAudio)
	endif()
	if()
		find_dependency(QSA)
	endif()
	if()
		find_dependency(QnxAudioManager)
	endif()
	if()
		find_dependency(FFMpeg)
	endif()
	if()
		find_dependency(V4L)
	endif()
	if()
		find_dependency(X11)
	endif()
	if()
		find_dependency(OpenGL)
	endif()
	if()
		find_dependency(GLEW)
	endif()
	if()
		find_dependency(Theora)
	endif()
	if(TRUE)
		find_dependency(VPX)
	endif()
	if(TRUE)
		find_dependency(BCMatroska2)
	endif()
	if()
		find_dependency(Screen)
	endif()
	if()
		find_dependency(CamApi)
	endif()
	if()
		find_dependency(BCG729)
	endif()
	if(TRUE)
		find_dependency(TurboJpeg)
	endif()
	if(TRUE)
		find_dependency(LibYUV)
	endif()
	if(TRUE)
		find_dependency(ZXing)
	endif()
endif()

check_required_components(Mediastreamer2)
