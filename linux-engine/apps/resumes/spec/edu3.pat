###############################################
# FILE: edu3.pat
# SUBJ: More education instance heuristics.
# AUTH: Amnon Meyers
# CREATED: 15/Dec/99 20:47:16
# MODIFIED:
###############################################

@PATH _ROOT _educationZone _educationInstance _LINE

# This one is for catching city turd to the right of school.
# Accepting short turds, even if known words, that haven't been reduced
# to anything.
@POST
  if (!X("school",3))
    X("school",3) = N("$text",1);
  if (N("unknowns",5)
      || (N("unreduced",5) && N("caplen",5) <= 2) )
    X("city",3) = N("$text",5);
@RULES
_xNIL <-
	_school [s]
	_xWHITE [s star]
	_xWILD [s one match=( \, \- )]
	_xWHITE [s star]
	_Caps
	@@

# This is for "late" schools.  Ones formed after higher confidence
# stuff failed to find the school.
@CHECK
   if (X("school",3)) fail();		# School not filled in yet.
@POST
  X("school",3) = N("$text");		# Fill instance with school name.
# noop()
@RULES
_xNIL <- _school [s] @@

# If no degree in major constructs found, etc., use standalones.
@CHECK
  if (X("degree",3)) fail();		# No degree yet.
@POST
  X("degree",3) = N("$text");
@RULES
_xNIL <- _degree [s] @@

# Similarly for major.
@CHECK
  if (X("major",3)) fail();		# No major yet.
@POST
  X("major",3) = N("$text");
@RULES
_xNIL <- _major [s] @@

