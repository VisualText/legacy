###############################################
# FILE: ctc_names.pat
# SUBJ: Name heuristics in contact zone.
# AUTH: Amnon Meyers
# CREATED: 25/Dec/99 20:02:40
# MODIFIED:
###############################################

@PATH _ROOT _contactZone _LINE

# If name has been selected, use it.  Else...
# If a single high confidence name was found in contact zone(s)
# of the resume, use it without further reasoning.
@CHECK
   if (X("name found",2)) fail();
   if (G("humannames") == 1 || N("name found")
    || N("ctcname conf") == X("hi ctcname conf",2))
	succeed();
   fail();
@POST
  # Need a way to get all the pieces of a name.
  # Probably should have been put into semantics already.
  # For now, designate this name as the chosen one,
  # and get it in a subsequent round.
  N("name found") = 1;
  X("name found") = 1;		# Track the line that has the name.
  X("name found",2) = 1;	# Name for contact zone found.
  X("contactName",2) = N("$text");	# At least get total name here.
@RULES
_xNIL <- _humanName @@
