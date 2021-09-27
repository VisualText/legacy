###############################################
# FILE: pr_z.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 15/Dec/99 00:15:48
# MODIFIED:
###############################################

@CODE
prlit("zdump.txt", "\nCharacterizing General Cap Phrases\n");
prlit("zdump.txt", "----------------------------------\n");
@@CODE

@PATH _ROOT _LINE

@POST
  ndump("zdump.txt",1);
  prlit("zdump.txt", "-------\n");
@RULES
_xNIL <- _Caps @@

