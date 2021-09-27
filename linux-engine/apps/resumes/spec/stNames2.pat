###############################################

# FILE: stNames2.pat

# SUBJ: Putting on the saint's

# CREATED: 07/Oct/99 14:42:46

###############################################



@NODES _LINE


@POST
  S("len") = 2;
  single();

@RULES

_saintName [layer=(_Caps)] <- 

	St [s]

	\.

	_xWHITE

	_saintName [s]

	@@



_saintName [layer=(_Caps)] <-

	Saint

	_xWHITE 

	_saintName [s]

	@@

