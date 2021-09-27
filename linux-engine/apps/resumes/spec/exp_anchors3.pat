###############################################
# FILE: exp_anchors3.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 22/Nov/99 09:39:26
# MODIFIED:
# ALG:	Traverse each line of experience zone.  If it's an
#		anchor, compute the next break point.  If it's a
#		line that computes to a breakpoint, layer it!
# NOTE:	Must worry about anchors that are also breakpoints.
###############################################

@CODE
# Initialize next break point line.
#var("break", 0)
G("break") = 0;

@@CODE

@PATH _ROOT _experienceZone

# If anchor is a breakpoint, starts a new instance.
@CHECK
 if (
	G("break") && G("break") == N("lineno", 1)
    )
    succeed();
 fail();
	#GeqN("break", "lineno", 1);
@POST
	# Compute the next breakpoint line.
	# Store it in global variable.
   if (N("next anchor", 1)	# If there is a next anchor.
	 && N("lineno", 1))	# and a line number.
	{
	# 01/01/00 AM. Now can use remainder operator.
	N("tmp") = N("next anchor") - N("lineno") - 1;
	if (N("tmp") % 2)		# If odd num of lines between anchors.
	   N("tmp") = (N("tmp") / 2) + X("noprestuff") + 1;
	else
	   N("tmp") = N("tmp") / 2 + 1;
	G("break") = N("lineno") + N("tmp");
	}
   # else breakpoint won't be matched.
   single();
@RULES
_expStart <- _ANCHOR [s] @@

# Anchor that is not a break point.
@POST
	# Compute the next breakpoint line.
	# Store it in global variable.
   if (N("next anchor", 1)	# If there is a next anchor.
	 && N("lineno", 1))	# and a line number.
	{
	# 01/01/00 AM. Now can use remainder operator.
	N("tmp") = N("next anchor") - N("lineno") - 1;
	if (N("tmp") % 2)		# If odd num of lines between anchors.
	   N("tmp") = (N("tmp") / 2) + X("noprestuff") + 1;
	else
	   N("tmp") = N("tmp") / 2 + 1;
	G("break") = N("lineno") + N("tmp");
	}
   # else breakpoint won't be matched.

   # noop()
@RULES
_xNIL <- _ANCHOR [s] @@

# A line that matches the breakpoint line number.
@CHECK
 if (
	G("break") && G("break") == N("lineno", 1)
    )
    succeed();
 fail();
	# GeqN("break", "lineno", 1);
@RULES
_expStart <- _LINE [s] @@
