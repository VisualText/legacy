###############################################
# FILE: unk1.pat
# SUBJ: Calculate number of unknowns on each line.
# AUTH: Amnon Meyers
# CREATED: 30/Dec/99 22:51:27
# MODIFIED:
###############################################

@PATH _ROOT _LINE

#@PRE
#<1,1> unknown()
@CHECK # 09/02/01 AM.
  if (spellword(N("$text",1)))
     fail();
@POST
  ++X("nunknowns");
# noop()
@RULES
_xNIL <- _xALPHA [s] @@

