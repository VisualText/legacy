/*** CONAN: AUTOMATICALLY GENERATED! EDITS WILL BE LOST. ***/
/*** CONSH: HAND-EDITING OK ***/
/* This one is for modular calls to the generated code. */

#include "StdAfx.h"				// 04/26/99 AM.
#include <stdio.h>
#include <stdlib.h>
#include <iostream>											// Upgrade	// 01/24/01 AM.
using namespace std;											// Upgrade	// 01/24/01 AM.
#include "prim/libprim.h"
//#include "prim/mach.h"
#include "prim/prim.h"
#include "prim/list_s.h"
#include "prim/list.h"

#include "kbm/libkbm.h"
#include "kbm/st.h"
#include "kbm/sym_s.h"
#include "kbm/sym.h"
#include "kbm/con_s.h"
#include "kbm/con_.h"
#include "kbm/ptr_s.h"
#include "kbm/ptr.h"
#include "kbm/Akbm.h"
#include "consh/libconsh.h"												// 08/15/02 AM.
#include "consh/cg.h"														// 08/15/02 AM.
#include "st_ini.h"
#include "sym_ini.h"
#include "con_ini.h"
#include "ptr_ini.h"
#include "cc_code.h"

bool																				// 08/15/02 AM.
cc_ini(void *xcg)																// 06/11/02 AM.
{
CG *cg = (CG *) xcg;															// 08/15/02 AM.
if (!cc_st_ini(cg)) return false;										// 08/15/02 AM.
if (!cc_sym_ini(cg)) return false;										// 08/15/02 AM.
cg->asym_->sym_reset();														// 08/15/02 AM.
							// Reset and zero out hash table.			// 06/14/99 AM.
if (!cc_con_ini(cg)) return false;										// 08/15/02 AM.
if (!cc_ptr_ini(cg)) return false;										// 08/15/02 AM.
return true;																	// 06/11/02 AM.
}
