project( WEB )

set ( SRCS
        StdAfx.cpp
        StdAfx.h
        tear.cpp
        url.cpp
        urls.cpp
        util.cpp
        util.h
        web.cpp
	)

ADD_MSVC_PRECOMPILED_HEADER("stdafx.h" "stdafx.cpp" SRCS)
add_library ( WEB SHARED 
		${SRCS}
	)

target_link_libraries( WEB )

install ( TARGETS WEB RUNTIME DESTINATION bin )	