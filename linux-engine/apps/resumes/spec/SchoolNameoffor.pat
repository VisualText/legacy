###############################################
# FILE: SchoolNameoffor.pat
# SUBJ: Find a school name
# CREATED: 01/Oct/99 14:58:14
###############################################

@NODES _LINE

@RULES 

_SchoolNamePhrase [] <- 
	_xWILD	[one s match=(_SchoolNamePhrase _SchoolRoot) ]
	_xWHITE	[s]
	_xWILD	[one s match=(for of) ]
	_xWHITE	[s]
	_xWILD	[one s match=(_CityName _state) layer=(_SchoolLocation)] 
 @@


# Ex: "University of XXX (XXX), -> _SchoolNamePhrase"
_SchoolNamePhrase [] <-
	_xWILD	[one s match=(_SchoolNamePhrase _SchoolRoot) ]
	_xWHITE	[star s]
	_xWILD	[one s match=(for of) ]
	_xWHITE	[star s]
	_xWILD	[s opt match=(the)]
	_xWHITE	[s star]
	_xWILD	[one s match=(_Name _major _saintName ) ] #10/09/99 PS
	_xWHITE	[star s]
	_xWILD     [opt s fails=( _xPUNCT _xWHITE _xNUM
		_degree _major _minor _gpa at
		_DateRange _SingleDate)]	# 10/09/99 PS		

	@@ 

# Ex: "University of XXX (XXX), -> _SchoolNamePhrase"

_SchoolNamePhrase [] <-
	_xWILD	[one s match=(_SchoolNamePhrase _SchoolRoot) ]
	_xWHITE	[star s]
	_xWILD	[one s match=(for of) ]
	_xWHITE	[star s]
	_xWILD	[s opt match=(the)]
	_xWHITE	[s star]
	_xWILD	[one s match=( _state _CityName ) layer=(_SchoolLocation)] #10/09/99 PS
	_xWHITE	[star s]
	_xWILD     [opt s fails=( _xPUNCT _xWHITE _xNUM
		_degree _major _minor _gpa at
		_DateRange _SingleDate)]	# 10/09/99 PS		
	@@ 


_SchoolNamePhrase [] <-
	_xWILD	[one s match=(_SchoolNamePhrase _SchoolRoot) ]
	_xWHITE	[star s]
	_xWILD	[one s match=(for of) ]
	_xWHITE	[star s]
	_xWILD	[s opt match=(the)]
	_xWHITE	[s star]
	_xALPHA     [s]
	_xWHITE	[star s]
	_xWILD     [opt s fails=( _xPUNCT _xWHITE _xNUM
		_degree _major _minor _gpa at
		and					# 10/25/99 AM.
		_DateRange _SingleDate)]	# 10/09/99 PS
	@@
