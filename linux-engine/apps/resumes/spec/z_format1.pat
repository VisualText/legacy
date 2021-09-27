###############################################
# FILE: z_format1.pat
# SUBJ: Some characterizing of text formats.
# AUTH: Amnon Meyers
# CREATED: 04/Jan/00 14:19:06
# MODIFIED:
###############################################

# Tracking in the line and globally.
# Should count tabs also.
@PATH _ROOT _LINE

@POST
#  S("bullet") = X("bullet") = "*";		# Commented out.	# 08/17/00 AM.
  if (X("nindent") == 3)
	++X("Netscape * bullet");
  # Track max and min bullet indent.
  if (!G("* bullets"))	# No * bullets seen yet.
	G("* bullet max") = G("* bullet min") = X("nindent");
  if (X("nindent") > G("* bullet max"))
	G("* bullet max") = X("nindent");
  if (X("nindent") < G("* bullet min"))
	G("* bullet min") = X("nindent");
  # Globally track number of bullets.
  ++G("* bullets");
  ++G("Netscape * bullets");
# modified 01.28.2k - PS:
#  single() 
  noop();
@RULES
# modified 01.28.2k - PS: was bleeding degree phrases
#_bullet [base] <-
_xNIL <-
	_xSTART
	_whtINDENT [s star]
	\* [s]		# The bullet
	_xWILD [s plus match=( _xWHITE _whtSEP)]
	_xWILD [s one lookahead fail=( \* )]
	@@

@PRE
<3,3> lowercase()
@POST
#  S("bullet") = X("bullet") = "o";	# Commented out.	# 08/17/00 AM.
  if (X("nindent") == 8)
	++X("Netscape o bullet");
  # Track max and min bullet indent.
  if (!G("o bullets"))	# No o bullets seen yet.
	G("o bullet max") = G("o bullet min") = X("nindent");
  if (X("nindent") > G("* bullet max"))
	G("o bullet max") = X("nindent");
  if (X("nindent") < G("o bullet min"))
	G("o bullet min") = X("nindent");
  # Globally track number of bullets.
  ++G("o bullets");
  ++G("Netscape o bullets");

# modified 01.28.2k - PS:
#  single() 
  noop();
@RULES
# modified 01.28.2k - PS: was bleeding degree phrases
#_bullet [base] <-
_xNIL <-
	_xSTART
	_whtINDENT [s star]
	o [s]		# The bullet.
	_xWILD [s plus match=( _xWHITE _whtSEP)]
	@@

@POST
#  S("bullet") = X("bullet") = "+";		# Commented out.	# 08/17/00 AM.
  if (X("nindent") == 13)
	++X("Netscape + bullet");
  # Track max and min bullet indent.
  if (!G("+ bullets"))	# No + bullets seen yet.
	G("+ bullet max") = G("+ bullet min") = X("nindent");
  if (X("nindent") > G("+ bullet max"))
	G("+ bullet max") = X("nindent");
  if (X("nindent") < G("+ bullet min"))
	G("+ bullet min") = X("nindent");
  # Globally track number of bullets.
  ++G("+ bullets");
  ++G("Netscape + bullets");
  single();
@RULES
_bullet [base] <-
	_xSTART
	_whtINDENT [s star]
	\+ [s]		# The bullet
	_xWILD [s plus match=( _xWHITE _whtSEP)]
	@@

# Dashes are ambiguous.  (They could start widow lines.)
# So we'll wait and see before committing.
@POST
  X("bullet") = "-";
  # Track max and min bullet indent.
  if (!G("- bullets"))	# No - bullets seen yet.
	G("- bullet max") = G("- bullet min") = X("nindent");
  if (X("nindent") > G("- bullet max"))
	G("- bullet max") = X("nindent");
  if (X("nindent") < G("- bullet min"))
	G("- bullet min") = X("nindent");
  # Globally track number of bullets.
  ++G("- bullets");
#  noop()
@RULES
_xNIL <-
	_xSTART
	_whtINDENT [s star]
	\- [s]		# The bullet
	_xWILD [s plus match=( _xWHITE _whtSEP)]
	@@

# Throwing some other stuff here for now. # 01/04/00 AM.
# Flag a line as an HTML converted turd.
@POST
  ++X("html turd");
# noop()
@RULES
_xNIL <- \[ [s] _xWILD \] [s] @@

