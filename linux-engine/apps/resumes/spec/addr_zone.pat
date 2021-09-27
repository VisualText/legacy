###############################################
# FILE: addr_zone.pat
# SUBJ: Count addressParts in each zone.
# CREATED: 23/Sep/99 12:25:33
# NOTE: 
###############################################

@NODES _contactZone _objectiveZone _educationZone _experienceZone _skillsZone _presentationsZone _publicationsZone _referencesZone _otherZone

# Get nth rule element's variable and add it to zone's variable.
# (Both variables called "addressParts")
@POST
  X("addressParts") = N("addressParts");			# 12/25/99 AM.
#	xaddnvar(1, "addressParts", "addressParts")	# 12/25/99 AM.
@RULES

_xNIL <- _LINE @@