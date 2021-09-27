###############################################
# FILE: g_company.pat
# SUBJ: Quick-and-dirty company name.
# AUTH: Amnon Meyers
# CREATED: 05/Dec/99 14:30:32
# MODIFIED:
# NOTE:	RECURSIVE PASS.
###############################################

@NODES _LINE

# Fix it up as a capitalized phrase!

# Special terminations
@RULES
_companyRoot <-
	of [s] _xWHITE [s star]
	North [s opt] _xWHITE [s star]
	America [s] @@

@POST
	S("len") = 2;
	single()
@RULES
_Caps [base unsealed] <-
	\, [s] _xWHITE [s star]
	_parenList _xWHITE [s star]
	_companyRoot [s trig]
	@@

# NORMAL TERMINATION CASE.
@POST
	S("len") = 1;
	single()
@RULES

_Caps [base unsealed] <-
	\, [s opt]
	_xWHITE [s star]
	_companyRoot [s trig]
	@@

# If multiple company roots, handle that.
@POST
	++N("len",1);
	listadd(1,4)
@RULES
_xNIL <- _Caps \, [s opt] _xWHITE [s star] _companyRoot [s] @@
@POST
	++N("len",3);
	listadd(3,1)	# REVERSE list-building.	# 12/05/99 AM.
@RULES
# Note: need a separate rule for punct.  _xANY before them is also
# glommed in.
_xNIL <-
	_xWILD [s one match=( _xCAP \& \* \! \- \/
		of and
		_possessive _hardware
		_companyMod _companyRoot _educationPart	# Some crud.
		_xNUM _parenList
		)]
	_xWHITE [s star]
	_Caps [trig] @@

# Single char abbreviations.
@PRE
<1,1>	length(1)
@POST
	++N("len",4);
	listadd(4,1)
@RULES
_xNIL <- _xCAP [s] \. [s] _xWHITE [s star] _Caps [trig] @@

# DOT-COM companies!
@RULES
_companyMod <- \. _xWHITE [s star]
	_xWILD [s one match=(Com Net)] @@

# The important INTERNATIONAL word.
_companyMod <- int [s] \' [s] l [s] @@

# Parenthesized list.
@RULES
_parenList <- \( [s]
	_xWILD [s min=1 max=6 fail=( \) _DateRange _SingleDate )]
	\) [s] @@


