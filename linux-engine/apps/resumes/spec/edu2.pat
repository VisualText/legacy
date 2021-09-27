###############################################
# FILE: edu2.pat
# SUBJ: Second level filling of education instance
# AUTH: Amnon Meyers
# CREATED: 15/Dec/99 20:08:47
# MODIFIED:
###############################################

@PATH _ROOT _educationZone _educationInstance _LINE

# If higher conf stuff hasn't filled education instance yet, try
# some stuff in here.

# If there's an unclaimed turd to the left, glom it in!
# Should have constraints on that turd.  If end of it can relate
# to start of head phrase, so much the better. etc. etc.
@CHECK
  if (
   !X("school",3)			# School not filled in yet,
&& (N("school conf",5) > 80)	# and a good candidate is around.
     )
     succeed();
 fail();
#@POST
#  X("school",3) = S("$text");		# Fill instance with school name.
#  single()
@RULES
_school <-
	_Caps		# The aforementioned turd.
	_xWHITE [s star]
	_xWILD [s one match=(and \&)]
	_xWHITE [s star]
	_Caps
	@@

# If I can glom degree with a subsequent turd w separation, use it.
# Should check that Caps isn't anything else useful...
@CHECK
  if (X("major",3)) fail();		# No major yet.
@POST
  X("major",3) = N("$text",5);
@RULES
_xNIL <-
	_degree [s]
	_xWHITE [s star]
	\, [s]
	_xWHITE [s star]
	_Caps [layer=(_major)]
	@@

# Standalone good school.  Use it!
@CHECK
  if (
   !X("school",3)			# School not filled in yet,
&& (N("school conf") > 80)	# and a good candidate is around.
     )
     succeed();
 fail();
@POST
#  X("school",3) = N("$text");	# Could do it this way.
  noop();											# Uncommented.	# 11/22/00 AM.
@RULES
#_school <- _Caps @@		# 12/26/99 AM.
_xNIL <- _Caps [rename=(_school)] @@


