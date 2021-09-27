###############################################
# FILE: z_edu.pat
# SUBJ: Gather data to assess cap phrase as school name.
# AUTH: Amnon Meyers
# CREATED: 14/Dec/99 23:57:53
# MODIFIED:
###############################################

@PATH _ROOT _LINE _Caps

@POST
  ++X("schoolroots");
  if (N("$end"))
    ++X("end schoolroot");
@RULES
_xNIL <- _SchoolRoot [s] @@
_xNIL <- _SchoolType [s] @@	# 12/15/99 AM.

@POST
  ++X("schoolnames");
  if (N("$end"))
    ++X("end schoolname");
@RULES
_xNIL <- _SchoolName [s] @@
_xNIL <- _CompleteSchoolName [s] @@


