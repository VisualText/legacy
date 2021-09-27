###############################################
# FILE: ctc_name_sem.pat
# SUBJ: Semantics for chosen contact name.
# AUTH: Amnon Meyers
# CREATED: 25/Dec/99 20:13:23
# MODIFIED:
###############################################

# Yucky way to get the semantics.  Want to match the _humanName
# once and get its piecy parts then.

@PATH _ROOT _contactZone _LINE _humanName

@CHECK
  if (!X("name found")) fail();
@POST
  X("prefixName",2) = N("$text");
@RULES
_xNIL <- _prefixName @@

@CHECK
  if (!X("name found")) fail();
@POST
  X("firstName",2) = N("$text");
@RULES
_xNIL <- _firstName @@

@CHECK
  if (!X("name found")) fail();
@POST
  X("middleName",2) = N("$text");
@RULES
_xNIL <- _middleName @@

@CHECK
  if (!X("name found")) fail();
@POST
  X("lastName",2) = N("$text");
@RULES
_xNIL <- _lastName @@

@CHECK
  if (!X("name found")) fail();
@POST
  X("suffixName",2) = N("$text");
@RULES
_xNIL <- _suffixName @@
