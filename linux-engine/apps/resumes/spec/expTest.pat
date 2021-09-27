###############################################
# FILE: expTest.pat
# SUBJ: this gets job titles which were missed in jooyeon.
#       note the path is longer than the next
#       rule, expa.
# AUTH: PS
# CREATED: 12/Jan/00 14:13:24
# MODIFIED:
###############################################
@PATH _ROOT _experienceZone _experienceInstance _LINE _experiencePart _Caps
@POST
   X("job title",3) = N("$text");
@RULES
_xNIL <- _jobTitle [s] @@
_xNIL <- _jobPhrase [s] @@
_xNIL <- _jobTitleRoot [s] @@


