###############################################
# FILE: psdaymonthyear.pat
# SUBJ: comment here
# CREATED: 22/Oct/99 12:04:47
###############################################

@NODES _LINE
@PRE
<3,3>	numrange(1, 31)
@RULES

# Ex:	02/02/98 02\03\98 02\01\'98 02-03-98 in case of
# ambiguity, month-day-year reading is preferred.
_date [] <- 
	_monthNum	[s layer = (_month) ]
	\/		[s]
	_xNUM		[s layer = (_day) ]
	\/		[s]
	_year 	[s]
	@@

_date [] <- 
	_monthNum	[s layer = (_month) ]
	\-		[s]
	_xNUM		[s layer = (_day) ]
	\-		[s]
	_year 	[s]
	@@

_date [] <- 
	_monthNum	[s layer = (_month) ]
	\/		[s]
	_xNUM		[s layer = (_day) ]
	\/		[s]
	_year 	[s]
	@@

@PRE
<1,1>	numrange(1, 31)
@RULES

# Ex:	31/02/98 15\3\98 22\01\'98 22-03-98 in case of
# ambiguity, month-day-year reading is preferred.
# here, there's no ambiguity, 
_date [] <- 
	_xNUM		[s layer = (_day) ]
	\/		[s]
	_monthNum	[s layer = (_month) ]
	\/		[s]
	_year 	[s]
	@@

_date [] <- 
	_xNUM		[s layer = (_day) ]
	\-		[s]
	_monthNum	[s layer = (_month) ]
	\-		[s]
	_year 	[s]
	@@

_date [] <- 
	_xNUM		[s layer = (_day) ]
	\/		[s]
	_monthNum	[s layer = (_month) ]
	\/		[s]
	_year 	[s]
	@@

@PRE
<1,1>	numrange(1, 31)
@RULES

# Ex: 30 July(,.) 1999
_date [] <- 
	_xNUM		[s layer = (_day) ]
	_xWHITE	[s]
	_xWILD	[s matches = (_monthWord) ]
	\.		[s opt]
	\,		[s opt]
	_xWHITE	[s]
	_year 	[s]
	@@

@PRE
<4,4>	numrange(1, 31)
@RULES

# Ex: July(.) 30, 1999
_date [] <- 
	_xWILD	[s matches = (_monthWord) ]
	\.		[s opt]
	_xWHITE	[s]
	_xNUM		[s layer = (_day) ]
	\,		[s opt]
	_xWHITE	[s]
	_year 	[s]
	@@