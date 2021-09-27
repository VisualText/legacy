###############################################
# FILE: ctc_names0.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 26/Dec/99 19:46:40
# MODIFIED:
###############################################

@PATH _ROOT _contactZone _LINE

# If human names, track highest confidence.
@CHECK
   if (!X("name found",2) && !N("name found") && G("humannames") > 1)
	succeed();
   fail();
@POST
  if (!N("humanname conf"))
	{
	# Must have come from Gram hierarchy or other strong source.
	# Assign an initial confidence.
	N("humanname conf") = 90;
	}
  # Now some computations in the contact zone.
  N("ctcname conf") = N("humanname conf");

  # Proximity to first address line.
  if (X("lineno") < X("first addressline",2))
	{
	N("diff") = X("first addressline",2) - X("lineno");
	N("ctcname conf") = N("ctcname conf") %% -(N("diff") * 15);
	}
  # Formatting above and below line.
  if (X("format above"))
	N("ctcname conf") = N("ctcname conf") %% 80;
  if (X("format below"))
	N("ctcname conf") = N("ctcname conf") %% 80;

  # Now, comparison to others.
  if (N("ctcname conf") > X("hi ctcname conf",2))
	X("hi ctcname conf",2) = N("ctcname conf");	# High so far.
@RULES
_xNIL <- _humanName @@

