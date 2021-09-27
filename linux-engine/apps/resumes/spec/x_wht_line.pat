################################################################################
# FILE: x_wht_line.pat
# SUBJ: Zap whitespace from lines.
# CR:	01/27/99 AM.
################################################################################


@NODES _LINE

# Zap all matched nodes in parse tree.
@POST
	excise(1,1);

@RULES
# Retaining these for now.	# 12/01/99 AM.
# _xNIL <- _xWILD [one match=(_whtINDENT _whtSEP)] @@

_xNIL <- _xWILD [plus match=(\  \t \n)]
	@@

#_xNIL <- \  @@
#_xNIL <- \t @@
#_xNIL <- \n @@

