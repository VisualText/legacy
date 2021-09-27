###############################################
# FILE: clean1.pat
# SUBJ: Clean merged lines, etc.
# AUTH: Amnon Meyers
# CREATED: 02/Dec/99 15:06:01
# MODIFIED:
###############################################

@NODES _LINE

#@CHECK
# Look in merged lines only. (Would like a more efficient
# way, rather than traversing the whole unmerged line.)
# X("merged");
@POST
	excise(2,2);		# Zap the indent.
@RULES
_xNIL <- \n [s] _whtINDENT [s] @@
_xNIL <- \n [s] _xWHITE [s star] @@	# 12/03/99 AM.

# 12/29/99 AM. Treating TABS AS SEPARATORS.
@RULES
_whtSEP [base] <- \t [s plus] @@


