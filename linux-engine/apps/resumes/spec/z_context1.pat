###############################################
# FILE: z_context1.pat
# SUBJ: Use context to categorize caps phrase.
# AUTH: Amnon Meyers
# CREATED: 20/Dec/99 13:14:02
# MODIFIED:
# NOTE:	Similar to glom1, but not building a phrase.
###############################################

@PATH _ROOT _LINE

@POST
  if (N("fields",5))
	N("minor conf",5) = 95;
  else
      N("minor conf",5) = 90;

  # Override whatever was assigned to this cap phrase.
  N("hi class",5) = "minor";
  N("hi conf",5) = N("minor conf",5); # Still room to grow!
  # noop()
@RULES

#example "Minored in English"
_xNIL <-
	_minorKey [s]
	_xWHITE [s star]
	in [s]
	_xWHITE [s star]
	_Caps
	@@

@POST
  N("hi class",4) = "minor";
  # if (N("$present",2)) bump the confidence.
  if (N("fields",4))
	N("hi conf",4) = 95;
  else
      N("hi conf",4) = 90;
  # noop()
@RULES
# ex "Minor: Greek"
_xNIL <-
	_minorKey [s]
#	\: [s]
	_xWILD [s one matches = ( \: \, ) ] # PS 01/11/00 for Mason
	_xWHITE [s star]
	_Caps
	@@

@POST
  N("hi class",3) = "minor";
  if (N("fields",3))
	N("hi conf",3) = 95;
  else
      N("hi conf",3) = 70;
  # noop()
@RULES

_xNIL <-
	_minorKey [s]
	_xWHITE [s star]
	_Caps
	@@

@POST
  N("hi class",1) = "minor";
  N("hi conf",1) = 80;
  # noop()
@RULES

_xNIL <-
	_Caps
	_xWHITE [s star]
	_minorKey [s]
	@@



