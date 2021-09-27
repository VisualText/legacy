###############################################
# FILE: caps0.pat
# SUBJ: Gather capitalized phrases.
# AUTH: Amnon Meyers
# CREATED: 16/Nov/99 16:13:12
# MODIFIED:
# NOTE:	RECURSIVE PASS!
#		For now, restricting this to EXPERIENCE ZONE.
###############################################

@PATH _ROOT _experienceZone _LINE

@POST
	S("len") = 1;			# One cap in list.
	single()
@RULES
# With [s], BASE is needed to prevent infinite loop in REC pass!
# Making this unsealed so we can gather data within _Caps later.
# (May not be needed.)
_Caps [base unsealed] <- _xCAP [s] @@
_Caps [base unsealed] <- _educationPart [s] @@	# 12/02/99 AM. Hack.

@POST
	++N("len",1);	# Increment number of caps.
	listadd(1,3)	# Discard the matched whitespace.
				# Glom last cap into list, without nesting.
@RULES
_xNIL <- _Caps _xWHITE [s star]
	_xWILD [s one match=( _xCAP _possessive _CompleteSchoolName
	)] @@

# Adding a company pattern here.	# 11/29/99 AM.
@POST
	++N("len",1);
	listadd(1,4)
@RULES
_xNIL <- _Caps \, [s] _xWHITE [s star] _companyRoot [s] @@

# Some generic stuff here.
@POST
	# Don't increment length for this.
	# Should retain the ampersand.
	listadd(1,5)
@RULES
_xNIL <- _Caps _xWHITE [s star] \& [s] _xWHITE [s star]
	_xWILD [s one match=( _xCAP _possessive _CompleteSchoolName
	)] @@
