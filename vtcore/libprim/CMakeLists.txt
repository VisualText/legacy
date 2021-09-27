project( LIBPRIM )

set ( SRCS
        dir.cpp
        dyn.cpp
        io.cpp
        libprim.cpp
        list.cpp
        mach-old.cpp
        prim.cpp
        sm.cpp
        StdAfx.cpp
        StdAfx.h
        str.cpp
        u_out.cpp
        u_out.h
	)

ADD_MSVC_PRECOMPILED_HEADER("stdafx.h" "stdafx.cpp" SRCS)
add_library ( LIBPRIM SHARED 
		${SRCS}
        )

add_dependencies ( LIBPRIM
                LIBSTREAM
	)

target_link_libraries( LIBPRIM
                LIBSTREAM
)

target_link_libraries( LIBPRIM )

install ( TARGETS LIBPRIM RUNTIME DESTINATION bin )	