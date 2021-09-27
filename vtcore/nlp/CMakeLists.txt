cmake_minimum_required ( VERSION 3.12 )
project( NLP VERSION 1.0.1 )

set ( SRCS
        nlp.cpp
        nlp.h
        stdafx.cpp
        stdafx.h
        targetver.h
	)

add_subdirectory( WORDS )
add_subdirectory( WN )
add_subdirectory( WEB )
add_subdirectory( LIBSTREAM )
add_subdirectory( LIBPRIM )
add_subdirectory( LIBKBM )
add_subdirectory( LIBCONSH )
add_subdirectory( LITE )

add_executable ( NLP WIN32
		${SRCS}
)