###############################################
# FILE: z_dump0.pat
# SUBJ: Dump caps before any glomming at all.
# AUTH: Amnon Meyers
# CREATED: 30/Dec/99 09:33:33
# MODIFIED:
###############################################

@CODE
prlit("zdump.txt", "\nCap Phrases (BEFORE ANY GLOMMING)\n");
prlit("zdump.txt", "-----------------------------------\n");
@@CODE

@PATH _ROOT _LINE

@POST
  ndump("zdump.txt",1);
  prlit("zdump.txt", "-------\n");
@RULES
_xNIL <- _Caps @@


