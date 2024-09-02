#define CONFIG_EBML_WRITING
#define CONFIG_EBML_UNICODE
#define CONFIG_DEBUGCHECKS
#define CONFIG_STDIO
/* #undef CONFIG_DEBUG_LEAKS */


#define CONFIG_64BITS_SYSTEM

#if (defined(_FILE_OFFSET_BITS) && _FILE_OFFSET_BITS == 64) || defined(CONFIG_64BITS_SYSTEM)
/* Use CONFIG_FILEPOS_64 only on 64 bits systems or 32 bits systems that have _FILE_OFFSET_BITS set to 64. */
#define CONFIG_FILEPOS_64 1
#endif
