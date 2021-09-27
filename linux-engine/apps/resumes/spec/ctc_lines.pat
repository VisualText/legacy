###############################################
# FILE: ctc_lines.pat
# SUBJ: Line bookkeeping in contact zone.
# AUTH: Amnon Meyers
# CREATED: 25/Dec/99 08:55:12
# MODIFIED:
###############################################

@PATH _ROOT _contactZone
# @INI
# Restart count in each zone here.
# X("nlines") = 0;
# @@INI

@POST
  N("lineno",1) = ++X("nlines");
  N("format below",1) = "true";
@RULES
_xNIL <-
	_LINE
	_xWILD [s one lookahead match=(_BLANKLINE _horizRule)]
	@@

@POST
  N("format above",2) = "true";
@RULES
_xNIL <-
	_xWILD [s one match=(_BLANKLINE _horizRule)]
	_LINE [lookahead]
	@@

# No blank or other formatting line above or below.
@POST
  N("lineno",1) = ++X("nlines");
@RULES
_xNIL <- _LINE @@

