###############################################
# FILE: lookup1.pat
# SUBJ: Trying the old Webco-style lookup.
# AUTH: Amnon Meyers
# CREATED: 08/Dec/99 22:19:25
# MODIFIED:
###############################################

@CODE
# Collect all alphabetics into variable!
G("Words") = "a";	# Dummy	# 11/22/00 AM.
#varstrs("Words")
@@CODE

@PATH _ROOT _LINE

@POST
	# Push current alphabetic onto variable.
	addstrs("Words",1);
@RULES
_xNIL <- _xALPHA [s] @@

