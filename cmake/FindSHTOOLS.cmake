#CMake module to find  a SHTOOLS library

find_library(SHTOOLS_LIBRARY NAMES SHTOOLS-mp SHTOOLS)
set(SHTOOLS_FOUND FALSE)
if(${SHTOOLS_LIBRARY} MATCHES "SHTOOLS")
    set(SHTOOLS_FOUND TRUE)
    get_filename_component(SHTOOLS_ROOTPATH "${SHTOOLS_LIBRARY}" DIRECTORY)
set(SHTOOLS_MODPATH ${SHTOOLS_ROOTPATH}/../modules CACHE PATH "Module path")
endif(${SHTOOLS_LIBRARY} MATCHES "SHTOOLS")

if(SHTOOLS_FIND_REQUIRED AND NOT SHTOOLS_FOUND)
	message( SEND_ERROR "SHTOOLS library not found")
endif(SHTOOLS_FIND_REQUIRED AND NOT SHTOOLS_FOUND)
