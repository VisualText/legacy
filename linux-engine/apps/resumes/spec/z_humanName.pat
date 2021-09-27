###############################################
# FILE: z_humanName.pat
# SUBJ: Gather data to assess cap phrase as human name.
# AUTH: Amnon Meyers
# CREATED: 17/Dec/99 11:04:01
# MODIFIED:
# NOTE:	Must retraverse cap phrases to catch ambiguities!
#	Maybe some new matching mode is needed, or an NLP++ way
#	to look down the singlet node.
###############################################

@PATH _ROOT _LINE _Caps

@POST
  ++X("humannames");
  if (N("$end"))
    ++X("end humanname");
  if (N("$start"))
    ++X("start humanname");
@RULES
_xNIL <- _humanNamepart [s] @@

