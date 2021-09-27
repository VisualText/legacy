###############################################
# FILE: expa.pat
# SUBJ: First look at experience anchor line for stuff.
# AUTH: Amnon Meyers
# CREATED: 03/Jan/00 16:56:48
# MODIFIED:
###############################################

@PATH _ROOT _experienceZone _experienceInstance _LINE
@CHECK
 if (
   !X("company name",3)
&& X("lineno") == X("anchor lineno",3)
    )
    succeed();
 fail();
@POST
   X("company name",3) = N("$text");
@RULES
_xNIL <- _company [s] @@

@CHECK
 if (
   !X("job title",3)
&& X("lineno") == X("anchor lineno",3)
    )
    succeed();
 fail();
@POST
   X("job title",3) = N("$text");
@RULES
_xNIL <- _jobTitle [s] @@
_xNIL <- _jobPhrase [s] @@


@CHECK
 if (
   !X("country",3)
&& X("lineno") == X("anchor lineno",3)
    )
    succeed();
 fail();
@POST
  X("country",3) = N("$text");
@RULES
_xNIL <- _country [s] @@

