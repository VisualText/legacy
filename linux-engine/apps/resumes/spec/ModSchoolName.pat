###############################################
# FILE: ModSchoolName.pat
# SUBJ: comment here
# CREATED: 04/Oct/99 14:59:07
###############################################
@NODES _LINE

# Joe (SchoolNamePhrase University) -> ModSchoolPhrase(Joe University)

@RULES
_SchoolNamePhrase [base] <- 
	_xWILD     
		[one s fails=( 
			_xPUNCT _xWHITE _xNUM _degree _degreePhrase 
			_major _minor _gpa from at in by
			_DateRange _SingleDate _CityState )]	# 10/09/99 PS	
	_xWHITE	[one s]			# 10/07/99 AM.
	_xWILD 	[t one match=( _SchoolNamePhrase _SchoolRoot )]
	@@
_CompleteSchoolName [] <- _CityState 	[s]
					_xWHITE	[s]
				_CompleteSchoolName [s] @@