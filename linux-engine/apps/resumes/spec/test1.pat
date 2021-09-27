###############################################
# FILE: test1.pat
# SUBJ: comment here
# AUTH: 
# CREATED: 12/Jan/00 12:16:24
# MODIFIED:
###############################################

@PATH _ROOT _experienceZone _experienceInstance _LINE _experiencePart _Caps

@RULES

@POST
   X("job title") = N("$text");
@RULES
_xNIL <- _jobTitle [s] @@
