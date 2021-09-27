###############################################
# FILE: resumeOf.pat
# SUBJ: Redo of "Resume of" phrases.
# AUTH: Amnon Meyers
# CREATED: 26/Dec/99 18:19:43
# MODIFIED:
###############################################

@PATH _ROOT _LINE

@POST
   # Mark the line also.
   X("ResumeByItselfLine") = 1;
   single();
@RULES
# Phil's rules, originally.
_ResumeByItselfLine [base] <-
	_xSTART
	_xWILD [s match=(_xWHITE _whtINDENT _whtSEP)]
	_resumeWord [s trig]
	_xWHITE [s star]
	_xWILD [match=(of for) s opt]
	_xWILD [s match=(_xWHITE _whtSEP)]
	_xEND @@

@POST
   # Mark the line.
   X("resumeOf") = 1;
   single();
@RULES
# Phil's rules, originally.
_resumeOf [base] <-
	_xSTART
	_xWILD [s match=(_xWHITE _whtINDENT _whtSEP)]
	_resumeWord [s trig]
	_xWHITE [s star]
	_xWILD [match=(of for) s opt]
	_xWILD [s match=(_xWHITE _whtSEP)]
	@@

