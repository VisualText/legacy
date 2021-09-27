###############################################
# FILE: un_rez.pat
# SUBJ: Dissolve REZZONE nodes.
# CREATED: 18/Sep/99 18:15:19
# NOTE: There's a more direct way than building and dissolving,
#	  but this is fine for now.
###############################################

@NODES _contactZone _objectiveZone _educationZone _experienceZone _skillsZone _presentationsZone _publicationsZone _referencesZone _otherZone

@POST
	splice(1,1);		# Zap the REZZONE node!
@RULES

_xNIL <- _REZZONE [s] @@

