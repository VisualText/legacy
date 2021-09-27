###############################################
# FILE: MajoredIn.pat
# SUBJ: comment here
# CREATED: 14/Oct/99 23:18:08
###############################################

@NODES _LINE

# ex. English Major
@POST
  singlex(1,1);
@RULES
_RealMajor <- 	_major 
		_xWHITE [s]
		_xWILD [s one matches = ( major ) ]@@

@POST
  singlex(3,3);
# ex. "major English"
@RULES
_RealMajor <- 	_xWILD [s one matches = ( majored major ) ]
		_xWHITE [s]
		_major @@

# ex. "major in English"
@POST
  singlex(5,5);
@RULES
_RealMajor <- 	_xWILD [s one matches = ( major majored ) ]
		_xWHITE [s]
		_xWILD [ s one matches = ( in ) ]
		_xWHITE [s]
		_major @@

# ex. "majored: English
@POST
  singlex(4,4);
@RULES
_RealMajor <- 	_xWILD [s one matches = ( major majored) ]
		_xWILD [ s one matches = ( \: \- ) ]
		_xWHITE [s opt]
		_major @@

@POST
  singlex(5,5);
@RULES
# ex. "major concentration English
_RealMajor <- 	_xWILD [s one matches = ( majored major) ]
		_xWHITE [s]
		concentration [s]
		_xWHITE [s]
		_major @@

@POST
  singlex(7,7);
@RULES
# ex. "major concentration in English
_RealMajor <- 	_xWILD [s one matches = ( major majored) ]
		_xWHITE [s]
		concentration [s]
		_xWHITE [s]
		in [s]
		_xWHITE [s]
		_major @@





