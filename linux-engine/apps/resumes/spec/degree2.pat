###############################################
# FILE: degree2.pat
# SUBJ: 
# CREATED: 08/Oct/99 20:29:19
###############################################

@NODES _LINE
@POST   
S("degree") = N("$text",1);
S("major") = N("$text",5); 
single();
@RULES
# bachelor(,) (of) computer engineering
_degreeInMajor <- 	
	_degree [s]
	_xWHITE [s opt]
	_xWILD [s one match=(\, of \- in \:)]
	_xWHITE [s ]
 	_field [s layer=(_major)]
 @@
# ex BS CS
@POST   
S("degree") = N("$text",1);
S("major") = N("$text",3); 
single();
@RULES

_degreeInMajor <- 	
	_degree [s]
	_xWHITE [s ]
 	_field [s layer=(_major)]
 @@

#ex CS BS
@POST   
S("degree") = N("$text",3);
S("major") = N("$text",1); 
single();
@RULES
_degreeInMajor <- 	
 	_field [s layer=(_major)]
	_xWHITE [s ]
	_degree [s]
 @@


