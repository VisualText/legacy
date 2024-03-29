/*******************************************************************************
Copyright (c) 2001 by Text Analysis International, Inc.
All rights reserved.  No part of this document may be copied, used, or
modified without written permission from Text Analysis International, Inc.
********************************************************************************
*
* NAME:	CHARS.CPP
* FILE:	lite\chars.cpp
* CR:		11/19/98 AM.
* SUBJ:	Class for tracking character array storage.
*******************************************************************************/

#include "StdAfx.h"
#include "machine.h"	// 10/25/06 AM.
#include "u_out.h"		// 01/19/06 AM.
#include "lite/global.h"
#include "chars.h"


int Chars::count_ = 0;

/********************************************
* FN:		Special functions for the class
********************************************/

Chars::Chars()					// Default constructor.
{
}

/*******************************************/

Chars::~Chars()
{
}


/*******************************************/

/*******************************************/
/*******************************************/


/********************************************
* FN:		Access Functions
********************************************/

/********************************************
* FN:		Modify Functions
********************************************/


/********************************************
* FN:		Class-Wide Functions
********************************************/

/********************************************
* FN:		CREATE
* CR:		11/19/98 AM.
* NOTE:	Class function.
********************************************/

_TCHAR *Chars::create(long size)
{
_TCHAR *tmp;
if (!(tmp = new _TCHAR[size]))
	{
	_t_strstream gerrStr;
	gerrStr << _T("[Couldn't allocate a char array.]") << ends;
	errOut(&gerrStr,false);
	return 0;
	}
#ifndef STABLE_
++count_;
//*gerr << (long)tmp << "+" << count_ << endl;
#endif
return tmp;
}


/********************************************
* FN:		DESTROY
* CR:		11/19/98 AM.
* NOTE:	Class function.
********************************************/

void Chars::destroy(_TCHAR *tmp)
{
//*gerr << (long)tmp << "-" << count_ << endl;
delete [] (_TCHAR *) tmp;
#ifndef STABLE_
--count_;
#endif
}

/********************************************
* FN:		GETCOUNT
* CR:		11/19/98 AM.
* NOTE:	Class function.
********************************************/
#ifndef STABLE_
int Chars::getCount() { return count_; }
#endif

/********************************************
* FN:		PRETTYCOUNT
* CR:		11/19/98 AM.
* NOTE:	Class function.
********************************************/
#ifndef STABLE_
void Chars::prettyCount(_t_ofstream *ofstr)
{
if (count_)
	{
	if (ofstr)
		*ofstr << _T("Active Chars count=") << count_ << endl;
	*gout << _T("Active Chars count=") << count_ << endl;
	_t_strstream gerrStr;
	gerrStr << _T("Active Chars count=") << count_ << ends;
	errOut(&gerrStr,false);
	}
}
#endif

/*************************      END OF FILE      ******************************/
