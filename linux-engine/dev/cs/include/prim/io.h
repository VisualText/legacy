/****************************************
Copyright © 1995 by Conceptual Systems.
Copyright (c) 1995 by Conceptual Systems.
All rights reserved.
*****************************************/ 
/*******************************************************************************
*
*									IO.H
*
* FILE:	conch.¹/io.h
* SUBJ:	Declarations for input/output.
* CR:	8/20/95 AM.
*
*******************************************************************************/

extern LIBPRIM_API void
indent(int num, _t_ostream *out);

extern LIBPRIM_API _TCHAR
skip_blanks(_TCHAR cc, _t_istream *fp);


//extern LIBPRIM_API void
//tab(int num, ostream *out);

extern LIBPRIM_API bool resolve_file(_TCHAR*,_TCHAR*,_TCHAR*);
