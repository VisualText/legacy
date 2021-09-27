###############################################
# FILE: z_conf1.pat
# SUBJ: Recompute confidences for glommed phrases.
# AUTH: Amnon Meyers
# CREATED: 18/Dec/99 01:16:43
# MODIFIED:
###############################################


@PATH _ROOT _LINE

@CHECK
   # Only recompute for caps that were glommed in the g_caps1 pass.
   if (!N("capofcap")) fail();
@POST
# if (!N("len"))
#    print out no length.
# Treating confidences independently, but keep track of
# ambiguity in the phrase.
# Glommed, so must be a multi-node cap phrase.
 
   ### REJECT FIRST CAP AS HUMAN NAME.
   # cap of cap is unlikely to hold a human name in a resume.
   # Note: Things like "Resume of John Smith" handled separately,
   # so far.
   # If the unglommed cap phrase added to ambiguity, undo it.
   if (N("humanname conf") >= G("threshold"))
      --N("ambigs");
   N("humanname conf") = 0;
   if (N("hi class") == "humanname")
	{
	# Find runner up category here.
	N("hi conf") = 0;
	N("hi class") = "NULL";
	if (N("school conf") > N("hi conf"))
	   {
	   N("hi class") = "school";
	   N("hi conf") = N("school conf");
	   }
	if (N("company conf") > N("hi conf"))
	   {
	   N("hi class") = "company";
	   N("hi conf") = N("company conf");
	   }
	if (N("job conf") > N("hi conf"))
	   {
	   N("hi class") = "job";
	   N("hi conf") = N("job conf");
	   }
	if (N("field conf") > N("hi conf"))
	   {
	   N("hi class") = "field";
	   N("hi conf") = N("field conf");
	   }
	}

@RULES
_xNIL <- _Caps @@

