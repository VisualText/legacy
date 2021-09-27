# FILE: findResumeOf.pat
# SUBJ: Find contact name 
# 	If you find '{Resume|CV} {of|for}' alone by itself on a line
#       insert a label 'ResumeLine'
# CREATED: 23/Mar/99 13:22:50
###############################################

@NODES _LINE

@RULES
# Phil's rules.
# 09/22/99 AM.  Worked them over a bit.
_ResumeByItsSelfLine <-
	_xSTART
	_xWILD [match=(Resume Resumé Résumé CV) s trigger]
	_xWILD [match=(of for) s opt]
	_xEND @@

_ResumeByItsSelfLine <-
	_xSTART
	C [s trigger] \. [s] V [s] \. [s]
	_xWILD [match=(of for) s opt]
	_xEND @@

_ResumeByItsSelfLine <-
	_xSTART
	Curriculum [s trigger] Vitae [s]
	_xWILD [match=(of for) s opt]
	_xEND @@


