project( LIBCONSH )

set ( SRCS
        Aconsh.cpp
        arg.cpp
        bind.cpp
        cc_code.cpp
        cc_code.h
        cc_gen.cpp
        cc_gen.h
        cg.cpp
        cg_global.cpp
        cg_global.h
        cmd.cpp
        cmd.h
        consh_gen.cpp
        consh_gen.h
        consh_kb.cpp
        con_gen.cpp
        con_gen.h
        con_ini.cpp
        con_ini.h
        dyn.cpp
        dyn.h
        gen.cpp
        gen.h
        help.cpp
        help.h
        ind.cpp
        ind.h
        io.cpp
        io.h
        libconsh.cpp
        ptr_gen.cpp
        ptr_gen.h
        ptr_ini.cpp
        ptr_ini.h
        StdAfx.cpp
        StdAfx.h
        st_gen.cpp
        st_gen.h
        st_ini.cpp
        st_ini.h
        sym_gen.cpp
        sym_gen.h
        sym_ini.cpp
        sym_ini.h
        ui.cpp
        ui.h
        u_out.cpp
        u_out.h
	)

ADD_MSVC_PRECOMPILED_HEADER("stdafx.h" "stdafx.cpp" SRCS)
add_library ( LIBCONSH SHARED 
		${SRCS}
        )

add_dependencies ( LIBCONSH
                LIBPRIM
		LIBSTREAM
	)

target_link_libraries( LIBCONSH
                LIBPRIM
                LIBSTREAM
)

target_link_libraries( LIBCONSH )

install ( TARGETS LIBCONSH RUNTIME DESTINATION bin )	