project( LIBQCONSH )

set ( SRCS
        Aconsh.cpp
        Aqconsh.cpp
        arg.cpp
        attr.cpp
        attr.h
        bind.cpp
        cg.cpp
        cgcon.cpp
        cgcon.h
        cgdict.cpp
        cgdict.h
        cg_global.cpp
        cg_global.h
        cmd.cpp
        cmd.h
        consh_kb.cpp
        help.cpp
        help.h
        ind.cpp
        ind.h
        io.cpp
        io.h
        libconsh.cpp
        libqconsh.cpp
        stdafx.cpp
        stdafx.h
        ui.cpp
        ui.h
        u_out.cpp
        u_out.h
	)

ADD_MSVC_PRECOMPILED_HEADER("stdafx.h" "stdafx.cpp" SRCS)
add_library ( LIBSTREAM SHARED 
		${SRCS}
        )

add_dependencies ( LIBQCONSH
                LIBSTREAM
	)

target_link_libraries( LIBSTREAM
                LIBSTREAM
)

target_link_libraries( LIBSTREAM )

install ( TARGETS LIBSTREAM RUNTIME DESTINATION bin )	