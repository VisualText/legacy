###############################################
# FILE: x_blanklines.pat
# SUBJ: Remove blank lines
# CREATED: 12/Mar/99 15:56:23
# NOTE: 10/31/99 AM. Removing this pass as part of subzoning
# algorithms.  Each subzone determines if and when to remove
# blank lines.
###############################################

#@NODES _REZZONE
@PATH _ROOT _REZZONE

@POST

excise(1,1)

@RULES

_xNIL <- _BLANKLINE @@
