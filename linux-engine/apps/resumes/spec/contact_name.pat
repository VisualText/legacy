###############################################
# FILE: contact_name.pat
# SUBJ: Find contact name "If you find a line dominating the
#       string literals 'resume of' or x's resume' followed by one or more alpha
#       chars, group the third element into the term 'humanNameCandidate'
#       then increment a counter called 'humanNameCandidate' which is
#       referred to in the next rule (contact_name2). Also, delete
#       the literals 'resume of' from the tree.
# CREATED: 23/Mar/99 13:22:50
###############################################

@NODES _LINE

#@CHECK
# grandfather("_contactZone")		# for example
@POST
	group(3,3, "_humanNameCandidate");
	++N("ResumeOf", 3);		# Flag high confidence name region.
	++X("humanNameCandidate");	# Flag that line has human name!
#	excise(1,2)
	noop();
@RULES
# 09/21/99 AM & Phil.
#_xNIL <- _xWILD [match=(Resume Resumé Résumé CV) s] 
#         _xWILD [match=(of for) s opt] 
#	   _xANY [s plus]
#	@@

_xNIL <- Resume [s] of [s] _xANY [s plus] @@
_xNIL <- Resumé [s] of [s] _xANY [s plus] @@
_xNIL <- Résumé [s] of [s] _xANY [s plus] @@
_xNIL <- CV [s] of [s] _xANY [s plus] @@

_xNIL <- Resume [s] for [s] _xANY [s plus] @@
_xNIL <- Resumé [s] for [s] _xANY [s plus] @@
_xNIL <- Résumé [s] for [s] _xANY [s plus] @@




@POST
	group(1,2, "_humanNameCandidate");
	++X("humanNameCandidate");	# Flag that line has human name!
	++N("ResumeOf",1);		# Flag high confidence name region.
#	excise(3,4)
	noop();
@RULES

_xNIL <- _xANY _xWILD 
	\' [s] 
	s [s] 
	_xWILD [match=(Resume Resumé Résumé CV) s trigger] 
	@@

@POST
	group(6,6, "_humanNameCandidate");
	++X("humanNameCandidate");	# Flag that line has human name!
	++N("ResumeOf",6);		# Flag high confidence name region.
#	excise(1,5)
	noop();
@RULES


_xNIL <- C [s] \. [s] V [s] \. [s] of [s] _xANY [s plus] @@
_xNIL <- C [s] \. [s] V [s] \. [s] for [s] _xANY [s plus] @@

@POST
	group(4,4, "_humanNameCandidate");
	++X("humanNameCandidate");	# Flag that line has human name!
	++N("ResumeOf",4);		# Flag high confidence name region.
#	excise(1,3)
	noop();
@RULES

_xNIL <- Curriculum [s] Vitae [s] for [s] _xANY [s plus] @@
_xNIL <- Curriculum [s] Vitae [s] of [s] _xANY [s plus] @@
