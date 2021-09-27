###############################################
# FILE: ctc_names2.pat
# SUBJ: Choose cap phrase as name.
# AUTH: Amnon Meyers
# CREATED: 29/Dec/99 17:07:24
# MODIFIED:
###############################################

@PATH _ROOT _contactZone _LINE

# If name hasn't been selected from _humanName nodes.
@CHECK
  if (
   !X("name found",2)
&& (N("ctcname conf") >= 60)
&& (N("name found")
    || N("ctcname conf") == X("hi ctcname conf",2))
	)
	succeed();
   fail();
@POST
  # Need a way to get all the pieces of a name.
  # Probably should have been put into semantics already.
  # For now, designate this name as the chosen one,
  # and get it in a subsequent round.
  N("unlabeled") = 1;
  N("name found") = 1;
  X("name found") = 1;		# Track the line that has the name.
  X("name found",2) = 1;	# Name for contact zone found.
  X("contactName",2) = N("$text");	# At least get total name here.
@RULES
_xNIL <- _Caps [rename=(_humanName)] @@

