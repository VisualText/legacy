project( LIBQKBM )

set ( SRCS
        Aqkbm.cpp
        CMakeLists.txt
        files.txt
        libqkbm.cpp
        mgr.cpp
        mgr.h
        stdafx.cpp
        stdafx.h
        strx.cpp
        strx.h
        util.cpp
        util.h
        xcon.cpp
        xcon.h
        xptr.cpp
        xptr.h
        xstr.cpp
        xstr.h
        xsym.cpp
        xsym.h
	)

ADD_MSVC_PRECOMPILED_HEADER("stdafx.h" "stdafx.cpp" SRCS)
add_library ( LIBQKBM SHARED 
		${SRCS}
        )

install ( TARGETS LIBQKBM RUNTIME DESTINATION bin )	