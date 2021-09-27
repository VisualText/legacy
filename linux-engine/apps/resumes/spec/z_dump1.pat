###############################################
# FILE: z_dump1.pat
# SUBJ: Intermediate dump of cap phrases.
# AUTH: Amnon Meyers
# CREATED: 18/Dec/99 01:46:11
# MODIFIED:
###############################################

@CODE
prlit("zdump.txt", "\nCap Phrases (BEFORE CONJUNCTION MERGE)\n");
prlit("zdump.txt", "----------------------------------------\n");
@@CODE

@PATH _ROOT _LINE

@POST
  ndump("zdump.txt",1);
  prlit("zdump.txt", "-------\n");
@RULES
_xNIL <- _Caps @@

