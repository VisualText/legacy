project( LIBKPRIM )

set ( SRCS
        Akbm.cpp
        attr.cpp
        con_.cpp
        dict.cpp
        find.cpp
        kbm.cpp
        kbm_alloc.cpp
        kbm_def.h
        kbm_kb.cpp
        kbm_priv.h
        libkbm.cpp
        pret.cpp
        ptr.cpp
        st.cpp
        StdAfx.cpp
        StdAfx.h
        sym.cpp
	)

ADD_MSVC_PRECOMPILED_HEADER("stdafx.h" "stdafx.cpp" SRCS)
add_library ( LIBKPRIM SHARED 
		${SRCS}
        )

add_dependencies ( LIBKPRIM
                LIBSTREAM
	)

target_link_libraries( LIBKPRIM
                LIBSTREAM
)

target_link_libraries( LIBKPRIM )

install ( TARGETS LIBKPRIM RUNTIME DESTINATION bin )	