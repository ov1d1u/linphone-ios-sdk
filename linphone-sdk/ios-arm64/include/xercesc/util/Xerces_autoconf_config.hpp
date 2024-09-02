/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * $Id: Xerces_autoconf_config.hpp.in 834826 2009-11-11 10:03:53Z borisk $
 */

//
// There are two primary xerces configuration header files:
//
//	Xerces_autoconf_config.hpp
//
//      For configuration of items that must be accessable
//	through public headers. This file has limited information
//	and carefully works to avoid collision of macro names, etc.
//
//	This file is included by XercesDefs.h. In the event
//	of a non-configured platform, a similar header specific
//	to the platform will be included instead.
//
//	config.h					
//
//      Generalized autoconf header file, with much more
//	information, used to supply configuration information
//	for use in implementation files.
//
// For autoconf based builds, this header is configured from by the configure
// script from the .in template file of the same name.


#ifndef XERCES_AUTOCONFIG_CONFIG_HPP
#define XERCES_AUTOCONFIG_CONFIG_HPP

#include <cstddef>
#include <cstdint>

// ---------------------------------------------------------------------------
//  These defines are set by configure as appropriate for the platform.
// ---------------------------------------------------------------------------
/* #undef XERCES_AUTOCONF */
/* #undef XERCES_HAVE_SYS_TYPES_H */
/* #undef XERCES_HAVE_INTTYPES_H */
/* #undef XERCES_HAVE_INTRIN_H */
/* #undef XERCES_HAVE_EMMINTRIN_H */
/* #undef XERCES_INCLUDE_WCHAR_H */

#define XERCES_S16BIT_INT int16_t
#define XERCES_S32BIT_INT int32_t
#define XERCES_S64BIT_INT int64_t
#define XERCES_U16BIT_INT uint16_t
#define XERCES_U32BIT_INT uint32_t
#define XERCES_U64BIT_INT uint64_t
#define XERCES_XMLCH_T wchar_t
#define XERCES_SIZE_T size_t
#define XERCES_SSIZE_T int32_t

#define XERCES_HAS_CPP_NAMESPACE
#define XERCES_STD_NAMESPACE
/* #undef XERCES_NEW_IOSTREAMS */
/* #undef XERCES_NO_NATIVE_BOOL */
/* #undef XERCES_LSTRSUPPORT */

/* #undef XERCES_HAVE_CPUID_INTRINSIC */
/* #undef XERCES_HAVE_SSE2_INTRINSIC */
/* #undef XERCES_HAVE_GETCPUID */

/* #undef XERCES_PLATFORM_EXPORT */
/* #undef XERCES_PLATFORM_IMPORT */

/* #undef XERCES_NO_MATCHING_DELETE_OPERATOR */

// ---------------------------------------------------------------------------
//  Include standard headers, if available, that we may rely on below.
// ---------------------------------------------------------------------------
#if XERCES_HAVE_INTTYPES_H
#	include <inttypes.h>
#endif
#if XERCES_HAVE_SYS_TYPES_H
#	include <sys/types.h>
#endif
#if XERCES_INCLUDE_WCHAR_H
#	include <wchar.h>
#endif

// ---------------------------------------------------------------------------
//  XMLSize_t is the unsigned integral type.
// ---------------------------------------------------------------------------
typedef size_t				XMLSize_t;
typedef int32_t			XMLSSize_t;

// ---------------------------------------------------------------------------
//  Define our version of the XML character
// ---------------------------------------------------------------------------
typedef wchar_t				XMLCh;

// ---------------------------------------------------------------------------
//  Define unsigned 16, 32, and 64 bit integers
// ---------------------------------------------------------------------------
typedef uint16_t			XMLUInt16;
typedef uint32_t			XMLUInt32;
typedef uint64_t			XMLUInt64;

// ---------------------------------------------------------------------------
//  Define signed 16, 32, and 64 bit integers
// ---------------------------------------------------------------------------
typedef int16_t			XMLInt16;
typedef int32_t			XMLInt32;
typedef int64_t			XMLInt64;

// ---------------------------------------------------------------------------
//  XMLFilePos is the type used to represent a file position.
// ---------------------------------------------------------------------------
typedef XMLUInt64			        XMLFilePos;

// ---------------------------------------------------------------------------
//  XMLFileLoc is the type used to represent a file location (line/column).
// ---------------------------------------------------------------------------
typedef XMLUInt64			        XMLFileLoc;

// ---------------------------------------------------------------------------
//  Force on the Xerces debug token if it is on in the build environment
// ---------------------------------------------------------------------------
#if defined(_DEBUG)
#define XERCES_DEBUG
#endif

#endif
