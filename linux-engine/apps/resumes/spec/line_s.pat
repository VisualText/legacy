###############################################
# FILE: lines.pat
# SUBJ: Gather Lines
# CREATED: 10/Mar/99 13:35:22
###############################################

@CODE
# A global threshold for confidence in a category.
#var("threshold", 70)	# Minimum is 70%
G("threshold") = 70;
# Moved here. # 12/30/99 AM.

@@CODE

@NODES _ROOT

@RULES

# 06/24/99 AM. Added tab.
_BLANKLINE <- _xWILD [min=0 max=0 matches=(\  \r \t)] \n @@

# 09/20/99 AM. Not sure why Dave rejecting tab chars in a line.
# Just whitespace.
#_LINE <- _xWILD [min=0 max=0 fails=(\r \n \t)] \n @@
# 11/02/99 AM. Either match on cr, or don't fail on it!
_LINE [unsealed] <- _xWILD [min=0 max=0 fails=(\n)] \n @@

# 10/05/99 AM.  When no newline terminates text.
_LINE [unsealed] <- _xWILD [plus fails=(\r \n)] @@

