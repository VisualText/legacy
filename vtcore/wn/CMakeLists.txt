project( WN )

set ( SRCS
        binsrch.c
        license.h
        morph.c
        search.c
        setutil.c
        setutil.h
        stopsearch.c
        wn.h
        wnconsts.h
        WNFunctions.cpp
        WNFunctions.h
        wnglobal.c
        wnglobal.h
        wnhelp.c
        wnhelp.h
        wnrtl.c
        wnrtl.h
        wntypes.h
        wnutil.c
	)

ADD_MSVC_PRECOMPILED_HEADER("stdafx.h" "stdafx.cpp" SRCS)
add_library ( WN SHARED 
		${SRCS}
	)

target_link_libraries( WN )

install ( TARGETS WN RUNTIME DESTINATION bin )	