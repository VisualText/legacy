###############################################
# FILE: SchoolName.pat
# SUBJ: Find a school name
# CREATED: 01/Oct/99 14:58:14
###############################################

@NODES _LINE

@RULES

# Ex: "(The) (XXX) U  niversity of XXX (XXX),"
_SchoolName [] <-
	_xWILD	[opt s match=(The)]
	_xWHITE	[star s]
#	_xALPHA     [opt s fails=( University _xWHITE The)]
#	_xWHITE	[star s]
	_xALPHA     [opt s fails=( University _xWHITE The)]
	_xWHITE	[star s]
	_xWILD	[min=1 max=1 s match=(University) trigger]
	_xWHITE	[star s]
	_xWILD	[min=1 max=1 s match=(for of) ]
	_xWHITE	[star s]
	_xALPHA     [opt s]
	_xWHITE	[star s]
	_xALPHA     [opt s]
	\,		
	@@ 

#Ex: "(The)(XXX) University of XXX (XXX) ENDOFLINE"
_SchoolName [] <-
	_xWILD	[opt s match=(The)]
	_xWHITE	[star s]
#	_xALPHA     [opt s fails=( University _xWHITE The)]
#	_xWHITE	[star s]
	_xALPHA     [opt s fails=( University _xWHITE The)]
	_xWHITE	[star s]
	_xWILD	[min=1 max=1 s match=(University) trigger]
	_xWHITE	[star s]
	_xWILD	[min=1 max=1 s match=(for of)]
	_xWHITE	[star s]
	_xALPHA     [opt s]
	_xWHITE	[star s]
	_xALPHA     [opt s]
	\n
	@@ 


