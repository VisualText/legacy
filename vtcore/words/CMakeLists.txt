project( WORDS )

set ( SRCS
        StdAfx.cpp
        StdAfx.h
        word1.cpp
        word2.cpp
        word3.cpp
        word4.cpp
        word5.cpp
        word6.cpp
        word7.cpp
        word8.cpp
        word9.cpp
        word10.cpp
        word11.cpp
        word12.cpp
        word13.cpp
        word14.cpp
        word15.cpp
        word16.cpp
        word17.cpp
        word18.cpp
        word19.cpp
        word20.cpp
        word21.cpp
        word22.cpp
        word23.cpp
        word24.cpp
        word25.cpp
        word26.cpp
        word27.cpp
        word28.cpp
        word29.cpp
        word30.cpp
        wordarrs.cpp
        words.cpp
	)

ADD_MSVC_PRECOMPILED_HEADER("stdafx.h" "stdafx.cpp" SRCS)
add_library ( WORDS SHARED 
		${SRCS}
	)

target_link_libraries( WORDS )

install ( TARGETS WORDS RUNTIME DESTINATION bin )	