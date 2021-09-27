###############################################
# FILE: qlines.pat
# SUBJ: Characterize lines.
# CREATED: 05/Aug/99 16:20:38
# WARN: 09/15/99 AM. NO MULTI-TOKEN PATTERNS SHOULD APPEAR BEFORE THIS
#       PASS. OR THE COUNTS WILL BE INCORRECT!!
###############################################

@NODES _LINE

@POST
	# xaddlen("nwhite", 1)
	X("nwhite") = X("nwhite") + N("$length",1);		# 06/04/00 AM.
@RULES
_xNIL <- _xBLANK [s] @@

@POST
	#xaddlen("nalpha", 1)	# Count alpha chars on line.
	#xinc("walpha")		# 09/15/99 AM. Count alpha 'words' on line.
	X("nalpha") = X("nalpha") + N("$length",1);		# 06/04/00 AM.
	++X("walpha");				# 06/04/00 AM.
@RULES

_xNIL <- _xALPHA [s] @@

@POST
	#xaddlen("nnum", 1)	# Count digit chars on line.
	#xinc("wnum")		# 09/15/99 AM. Count num 'words' on line.
	X("nnum") = X("nnum") + N("$length",1);		# 06/04/00 AM.
	++X("wnum");				# 06/04/00 AM.
@RULES
_xNIL <- _xNUM [s] @@

@POST
	#xaddlen("npunct", 1)
	X("npunct") = X("npunct") + N("$length",1);	# 06/04/00 AM.
@RULES
_xNIL <- _xPUNCT [s] @@
