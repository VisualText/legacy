###############################################
# FILE: g_humanName.pat
# SUBJ: comment here
# CREATED: 29/Aug/99 22:57:36
# NOTE:	01/01/99 AM. Not integrated with latest cap phrase stuff.
###############################################

@PATH _ROOT _contactZone _LINE _Caps	# 12/25/99 AM.

# Hand building generalized human name.	# 08/29/99 AM.

@PRE
<1,1> cap();
<1,1> length(1);
<4,4> cap();
<4,4> length(1);
<7,7> cap();
@CHECK
  if (!X("humanNameCandidate",3)) fail();	# Line is likely candidate.
@POST
  # Rename the cap phrase node.
  xrename("_humanName");
# noop()
@RULES
_xNIL <-
     _xALPHA [s layer=(_firstName)]
     \.      [s opt]
     _xBLANK [s opt]
     _xALPHA [s layer=(_middleName)]	# middle initial
     \. [s opt]
     _xBLANK [s opt]
     _xALPHA [s layer=(_lastName)]
     @@

@PRE
<1,1> cap();
<3,3> cap();
<3,3> length(1);
<6,6> cap();
@CHECK
  if (!X("humanNameCandidate",3)) fail();	# Line is likely candidate.
@POST
  xrename("_humanName");
# noop()
@RULES
_xNIL <-
     _xALPHA [s layer=(_firstName)]
     _xBLANK [s opt]
     _xALPHA [s layer=(_middleName)]	# middle initial
     \. [s opt]
     _xBLANK [s opt]
     _xALPHA [s layer=(_lastName)]
     @@

@PRE
<1,1> cap();
<5,5> cap();
@CHECK
  if (!X("humanNameCandidate",3)) fail();	# Line is likely candidate.
@POST
  group(3,5, "_lastName");
  xrename("_humanName");
# noop()
@RULES
_xNIL <-
     _xALPHA [s layer=(_firstName)]
     _xBLANK [s opt]
     _xWILD [s one match=(de du la da)]
     _xBLANK [s opt]
     _xALPHA [s]
     @@

@PRE
<1,1> cap();
<3,3> cap();
<5,5> cap();
@CHECK
  if (!X("humanNameCandidate",3)) fail();
@POST
  xrename("_humanName");
# noop()
@RULES
_xNIL <-
	_xALPHA [s layer=(_firstName)]
	_xWHITE [s star]
	_xALPHA [s layer=(_middleName)]
	_xWHITE [s star]
	_xALPHA [s layer=(_lastName)]
	@@

@PRE
<1,1> cap();
<5,5> cap();
@CHECK
  if (!X("humanNameCandidate",3)) fail();
@POST
  xrename("_humanName");
# noop()
@RULES
_xNIL <-
	_xALPHA [s layer=(_firstName)]
	_xWHITE [s star]
	_xALPHA [s layer=(_lastName)]
	@@
