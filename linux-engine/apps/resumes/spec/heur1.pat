###############################################
# FILE: heur1.pat
# SUBJ: Fold some widows, etc.
# AUTH: AM
# CREATED: 02/Dec/99 06:36:39
# MODIFIED:
###############################################

# If there are two adjacent lines, one very full and the other
# very short, fold them.  (Stringent requirements at first.)
@NODES _ROOT

@CHECK
debug();
	if (N("nblobs",1) < N("nblobs",2) + 6)
		fail();		# 06/06/00 AM.

	# Require full line followed by a short line.
 if (
	(N("nblobs",1) >= (N("nblobs",2) + 6))
	&&
	(N("blobs",2) <= 3)
	&&
	!N("wallcaps",2)
	&&

	# Require punctuation or number or a lowercase word,
	# so we don't snag headers too much.
	(N("npunct",2) || N("nnum",2) || (N("walpha",2) > N("wcap",2))
	|| (N("nunknowns") == 1)	# Don't want to snag human name.
#	|| (!N("nindent",2) && !N("wallcaps",2))
	)
   )
   succeed();
fail();
@POST
	S("merged") = 1;		# Flag that this is a merged line.

	# Glom variable counts in new line concept.
	S("nalpha") = N("nalpha",1) + N("nalpha",2);
	S("nnum") = N("nnum",1) + N("nnum",2);
	S("npunct") = N("npunct",1) + N("npunct",2);
	S("nblobs") = N("nblobs",1) + N("nblobs",2);
	S("walpha") = N("walpha",1) + N("walpha",2);
	S("wcap") = N("wcap",1) + N("wcap",2);
	S("wallcaps") = N("wallcaps",1) + N("wallcaps",2);

	# Subtract indent whitespace from second line.  This will be
	# zapped in a subsequent pass (clean1).
	S("nindent") = N("nindent",1);	# Use only first line's.
	S("nwhite") = N("nwhite",1) + N("nwhite",2) - N("nindent",2);

	# Zap the two line nodes and glom their contents under one line.
	merger(1,2);
@RULES

_LINE <- 
	_LINE
	_LINE
	@@
