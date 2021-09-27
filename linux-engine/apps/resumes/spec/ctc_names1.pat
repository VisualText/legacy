###############################################
# FILE: ctc_names1.pat
# SUBJ: More name search in contact zone.
# AUTH: Amnon Meyers
# CREATED: 29/Dec/99 16:54:55
# MODIFIED:
###############################################

@PATH _ROOT _contactZone _LINE

# If hi conf name wasn't found in earlier passes, look at reasonable
# candidates.
@CHECK
   if (!X("name found",2) && !G("humannames")
	 && N("humanname conf") >= 60)
	succeed();
   fail();
@POST
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
	N("ctcname conf") = N("ctcname conf") %% 60;
  if (X("format below"))
	N("ctcname conf") = N("ctcname conf") %% 60;

  # Now, comparison to others.
  if (N("ctcname conf") > X("hi ctcname conf",2))
	X("hi ctcname conf",2) = N("ctcname conf");	# High so far.
@RULES
_xNIL <- _Caps @@


