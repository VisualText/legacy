###############################################
# FILE: dump_exp.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 22/Dec/99 14:29:21
# MODIFIED:
###############################################

@CODE
fileout("zexp.txt");
prlit("zexp.txt", "\nCharacterizing General Cap Phrases\n");
prlit("zexp.txt", "----------------------------------\n");
@@CODE

@PATH _ROOT _experienceZone _experienceInstance _LINE

@POST
  ndump("zexp.txt",1);
  prlit("zexp.txt", "-------\n");
@RULES
_xNIL <- _Caps @@

