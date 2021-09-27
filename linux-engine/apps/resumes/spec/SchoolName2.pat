###############################################
# FILE: SchoolName2.pat
# SUBJ: Find a school name
# CREATED: 01/Oct/99 14:58:14
###############################################

@NODES _LINE

@RULES

# Ex: "University of XXX (XXX), -> _SchoolNamePhrase"

_SchoolNamePhrase [sealed] <-
	_SchoolNamePhrase [s]
	_xWHITE	[star s]
	_xWILD	[min=1 max=1 s match=(for of) ]
	_xWHITE	[star s]
	_xWILD	[s opt match=(the)]
	_xWHITE	[s star]
	_xALPHA     [s]
	_xWHITE	[star s]
	_xWILD     [opt s fails=( _xPUNCT _xWHITE _whtSEP _xNUM
		_degree _major _minor _gpa )]		
	@@ 
