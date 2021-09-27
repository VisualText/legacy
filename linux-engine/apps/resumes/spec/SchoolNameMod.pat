###############################################
# FILE: SchoolNameMod.pat
# SUBJ: comment here
# CREATED: 10/05/99
###############################################
@NODES _LINE

# Modifying these a bit.  10/07/99 AM.
@RULES
_SchoolNamePhrase <-
  _SchoolName [s]
  _xWHITE [s star]
  _xWILD [s match=(and \& )]
  _xWHITE [s star]
  _SchoolName [s]
@@

_SchoolNamePhrase <- _SchoolName [s] @@

