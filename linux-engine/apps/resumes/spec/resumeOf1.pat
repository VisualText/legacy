###############################################
# FILE: resumeOf1.pat
# SUBJ: More resume-of phrase handling.
# AUTH: Amnon Meyers
# CREATED: 26/Dec/99 18:45:01
# MODIFIED:
###############################################

@NODES _ROOT

# Mark the line following a lone "Resume of" phrase.
@CHECK
  if (!N("ResumeByItselfLine",1)) fail();
@POST
  N("AfterResumeByItselfLine",3) = 1;
  ++N("humanNameCandidate",3);
# noop()
@RULES
_xNIL <-
	_LINE
	_xWILD [s match=(_BLANKLINE _horizRule)]
	_LINE
	@@
