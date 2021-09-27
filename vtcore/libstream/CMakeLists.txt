project( LIBSTREAM )

set ( SRCS
        StdAfx.cpp
        StdAfx.h
        libStream.cpp
        libStream.h
        streamClasses.cpp
        streamClasses.h
        u_convert.cpp
        u_convert.h
	)

ADD_MSVC_PRECOMPILED_HEADER("stdafx.h" "stdafx.cpp" SRCS)
add_library ( WORDS SHARED 
		${SRCS}
	)

target_link_libraries( LIBSTREAM )

install ( TARGETS LIBSTREAM RUNTIME DESTINATION bin )	