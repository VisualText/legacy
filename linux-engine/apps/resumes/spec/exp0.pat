###############################################
# FILE: exp0.pat
# SUBJ: High confidence experience zone assignments.
# AUTH: Amnon Meyers
# CREATED: 29/Dec/99 23:15:10
# MODIFIED:
###############################################

@PATH _ROOT _experienceZone _experienceInstance _LINE

# 01/03/00 AM. This is not good, since it picks up the first company
# name regardless of position, etc.  Should raise confidence here.
# May want to collect confidence in the instance.
@CHECK
 if (
   !X("company name",3)
&& (N("tmp") = (X("lineno") - X("anchor lineno",3)))
&& (N("tmp") == -2 || N("tmp") == 2)	 # Within 2 lines of anchor.
    )
    succeed();
 fail();
@POST
   X("company name",3) = N("$text");
@RULES
_xNIL <- _company [s] @@

# Don't get cocky, Luke!  01/03/00 AM.
@CHECK
 if (
   !X("job title",3)
&& (N("tmp") = (X("lineno") - X("anchor lineno",3)))
&& (N("tmp") == -2 || N("tmp") == 2)	 # Within 2 lines of anchor.
    )
    succeed();
 fail();
@POST
   X("job title") = N("$text");
@RULES
_xNIL <- _jobTitle [s] @@
_xNIL <- _jobPhrase [s] @@


@CHECK
 if (
   !X("country",3)
&& (N("tmp") = (X("lineno") - X("anchor lineno",3)))
&& (N("tmp") == 2 || N("tmp") == 2)	# Within 2 lines of anchor.
    )
    succeed();
 fail();
@POST
  X("country",3) = N("$text");
@RULES
_xNIL <- _country [s] @@
