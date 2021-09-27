@NODES _LINE

@POST 
	noop()

@RULES

# ex. University of Miami(,) Orlando

_xNIL <- 
	_CompleteSchoolName [s]
	_xWILD	[s opt matches = (\, \: \; \-)]
	_xWILD	[s star matches = ( _xWHITE _whtSEP )]
	_CityName	[tree layer = ( _SchoolLocation )] @@

# ex. UNiversity of Pittsburg - Miami
_xNIL <- 
	_CompleteSchoolName [s]
	_xWHITE	[s ]
	_xWILD	[s opt matches = ( \-)]
	_xWHITE	[s]
	_CityName	[tree layer = ( _SchoolLocation )] @@

# ex. University of Miami(,) at Orlando
_xNIL <- 
	_CompleteSchoolName [s]
	_xWILD	[s opt matches = (\, \: \; \-)]
	at		[s]
	_xWHITE	[s]
	_CityName	[tree layer = ( _SchoolLocation )] @@
