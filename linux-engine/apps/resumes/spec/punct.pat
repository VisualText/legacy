###############################################
# FILE: punct.pat
# SUBJ: marks punctuation
# CREATED: 05/Mar/99 13:42:47
###############################################


@NODES _LINE

# @RULES
# 09/15/99 AM.  Not using this stuff yet.
# _htmlCommentOpen <- \< \! \- \- @@
# _htmlCommentClose <- \- \- \> @@

#@POST
#	excise(1,1)
#	single()		# Excise not set up for any followup action.
@RULES
#_horizRule <- _xWILD [min=4 max=0 matches=(_xPUNCT)] @@

_horizRule <- _xWILD [min=4 max=0 matches=(
#	\! \@ \# \$ \% \^ \&
	\*
#	\( \)
	\- \_
#	\= \+
#	\[ \{ \] \}
#	\; \: \' \" \, \< \. \> \/ \? \\ \|
	)]
	@@
