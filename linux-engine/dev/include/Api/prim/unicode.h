/*******************************************************************************
Copyright (c) 2006 by Text Analysis International, Inc.
All rights reserved.
********************************************************************************
*
* NAME:	U_OUT.H
* FILE:	prim/unicode.h
* CR:		01/24/06 AM.
* SUBJ:	Declares for unicode conversions.
*
*******************************************************************************/

#ifndef UNICODE_H_
#define UNICODE_H_


#ifdef UNICODE

#ifndef IO_LIBRARIES_
#define IO_LIBRARIES_
#include <iostream>
#include <fstream>
#include <sstream>
using namespace std;
#endif

#include <windows.h>
#include <tchar.h>
#include <my_tchar.h>

#include <streamclasses.h>

#include "u_convert.h"


LIBPRIM_API _TCHAR getutf8(_t_istream *);
LIBPRIM_API bool u_readbom(_t_ifstream *);

#else
#include <stdio.h>
#include <stdlib.h>
#include <iostream>
#include <fstream>
using namespace std;
#ifdef LINUX
#include <sstream>
#else
#include <strstream>
#endif

#endif

#endif

