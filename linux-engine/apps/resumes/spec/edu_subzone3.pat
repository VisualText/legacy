###############################################
# FILE: edu_subzone3.pat
# SUBJ: Layer start of education subzone.
# AUTH: Amnon Meyers
# CREATED: 16/Nov/99 10:15:00
# MODIFIED:
# NOTE: Shouldn't need this pass, if prior pass did the layering.
###############################################

@PATH _ROOT _educationZone

# Mark the start of subzone in parse tree.
@CHECK
	#Ngt(1,"instance",0)
	if (N("instance",1) <= 0) fail();
@RULES

_eduStart <- _LINE [s] @@


