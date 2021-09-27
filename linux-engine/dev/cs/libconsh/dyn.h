/*******************************************************************************
Copyright (c) 2000 by Text Analysis International, Inc.
All rights reserved.  No part of this document may be copied, used, or
modified without written permission from Text Analysis International, Inc.
********************************************************************************
*
* NAME:	DYN.H
* FILE:	libconsh/dyn.h
* CR:		06/29/00 AM.
* SUBJ:	Module dealing with dynamic load of kb.dll library.
*
*******************************************************************************/

#ifndef LIBCONSH_DYN_
#define LIBCONSH_DYN_

bool call_kb_setup(
#ifndef LINUX
	HINSTANCE hLibrary,
	void *cg
#endif
	);

#endif
