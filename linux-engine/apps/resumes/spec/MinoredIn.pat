###############################################
# FILE: MinoredIn.pat
# SUBJ: comment here
# CREATED: 14/Oct/99 23:18:08
###############################################

@NODES _LINE

# ex. English Minor

@POST
  singlex(1,1);
@RULES
_minor <- 	_xWILD [s one matches=(_field _major)] 
		_xWHITE [s]
		_xWILD [s one matches = ( minored minor minors concentration) ]
		@@

@POST
  singlex(3,3);
# ex. "minor English"
@RULES
_minor <- 	_xWILD [s one matches = ( minored minor minors concentration) ]
		_xWHITE [s]
		_xWILD [s one matches=(_field _major)]
		@@

# ex. "minor in English"
@POST
  singlex(5,5);
@RULES
_minor <- 	_xWILD [s one matches = ( minored minor minors concentration) ]
		_xWHITE [s]
		_xWILD [ s one matches = ( in ) ]
		_xWHITE [s]
		_xWILD [s one matches=(_field _major)]
		@@

# ex. "minored: English

@POST singlex(4,4);
@RULES
_minor <- 	_xWILD [s one matches = ( minored minor minors concentration) ]
		_xWILD [ s one matches = ( \: \- ) ]
		_xWHITE [s opt]
		_xWILD [s one matches=(_field _major)]
		@@

@POST
  singlex(5,5);
@RULES
# ex. "minor concentration English
_minor <- 	_xWILD [s one matches = ( minor minors) ]
		_xWHITE [s]
		concentration [s]
		_xWHITE [s]
		_xWILD [s one matches=(_field _major)]
		@@

@POST
  singlex(7,7);
@RULES
# ex. "minor concentration in English
_minor <- 	_xWILD [s one matches = ( minor minors) ]
		_xWHITE [s]
		concentration [s]
		_xWHITE [s]
		in [s]
		_xWHITE [s]
		_xWILD [s one matches=(_field _major)]
		@@



