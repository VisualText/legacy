###############################################
# FILE: z_field.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 20/Dec/99 23:32:58
# MODIFIED:
###############################################

@PATH _ROOT _LINE _Caps

@POST
  ++X("fields");
  if (N("$end"))
    ++X("end field");
  if (N("$start"))
    ++X("start field");
@RULES
_xNIL <- _fieldName [s] @@

