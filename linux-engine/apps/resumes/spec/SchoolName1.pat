###############################################

# FILE: SchoolName1.pat

# SUBJ: comment here

# CREATED: 04/Oct/99 15:29:18

###############################################



# CHANGED _SchoolName => _SchoolType  # 12/15/99 AM.

@NODES _LINE


@POST
  S("len") = 2;
  single();

@RULES
_SchoolType [layer=(_Caps)] <-

  _xWILD [one s match=(High Graduate Postgraduate Music Law

	Regional)]

  _xWHITE [s star]

  School [s t]

@@



_SchoolType [layer=(_Caps)] <-

  _xWILD [one s match=(Christian State Tech Hebrew)]

  _xWHITE [s star]

  _SchoolRoot [s]

@@



_SchoolType [layer=(_Caps)] <-

  _xWILD [one s match=(State Bible Community Western Union Southern

	Baptist Methodist _PostalState Polytechnical Christian

	Memorial Central Mountain New Technical)]

  _xWHITE [s star]

  _SchoolRoot [s]

@@



_SchoolType [layer=(_Caps)] <-

  _xWILD [one s match=(Art)]

  _xWHITE [s star]

  Academy [s t]

@@



_SchoolType [layer=(_Caps)] <-

  _xWILD [one s match=(Bible Technical _PostalState Graduate

	Polytechnic Art Military)]

  _xWHITE [s star]

  Institute [s t]

@@



_SchoolType [layer=(_Caps)] <-

  _xWILD [one s match=(Theological Lutheran)]

  _xWHITE [s star]

  Seminary [s t]

@@



_SchoolType [layer=(_Caps)] <-

  	_xWILD [s one matches=(

		State Polytechnic Graduate Technical Community Junior

		Bible Theological )]

  	_xWHITE [s star]

	_SchoolRoot [s]

 @@

