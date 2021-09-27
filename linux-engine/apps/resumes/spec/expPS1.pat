###############################################
# FILE: expPS1.pat
# SUBJ: comment here
# AUTH: 
# CREATED: 31/Jan/00 12:01:30
# MODIFIED:
###############################################
@PATH _ROOT _experienceZone _experienceInstance _LINE _Caps

@POST 
  X("job title",3) = N("$text",1);
  X("company name",3) = N("$text",5);
  single();
@RULES
_xNIL <-  _jobTitle [s] 
		_xWHITE [s] 
		at [s] 
		_xWHITE [s]
		_Caps [s] @@
