###############################################
# FILE: pr_ctc_caps.pat
# SUBJ: Dump contact zone caps.
# AUTH: Amnon Meyers
# CREATED: 25/Dec/99 09:07:07
# MODIFIED:
###############################################

@CODE
prlit("ctc.txt", "\n    Contact Zone Cap Phrases\n");
prlit("ctc.txt", "----------------------------------\n");
@@CODE

@PATH _ROOT _contactZone _LINE

@POST
  ndump("ctc.txt",1);
  prlit("ctc.txt", "-------\n");
@RULES
_xNIL <- _Caps @@
_xNIL <- _humanName @@




