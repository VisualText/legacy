###############################################
# FILE: rezzones.pat
# SUBJ: Zone education & experience
# CREATED: 16/Mar/99 18:23:00
###############################################

#@NODES _ROOT
@PATH _ROOT

#@POST

#singlex(2,2)

# NOTE: DON'T SEAL THESE, BECAUSE WE WANT TO SEARCH FOR
# PATTERNS IN THEM.  10/09/99 AM.
@RULES

_contactZone    [unsealed]   <- _contactBoundary     [s] _REZZONE @@
_objectiveZone  [unsealed]   <- _objectiveBoundary   [s] _REZZONE @@
_educationZone  [unsealed]   <- _educationBoundary   [s] _REZZONE @@
_experienceZone [unsealed]   <- _experienceBoundary  [s] _REZZONE @@
_skillsZone     [unsealed]   <- _skillsBoundary      [s] _REZZONE @@
_presentationsZone [unsealed] <- _presentationsBoundary [s] _REZZONE @@
_publicationsZone [unsealed]  <- _publicationsBoundary  [s] _REZZONE @@
_referencesZone   [unsealed] <- _referencesBoundary    [s] _REZZONE @@
_otherZone      [unsealed] <- _otherBoundary [s] _REZZONE @@

# 09/17/99 AM. Allow some one-line zones.
# Actually, need to see if allcaps boundary at start of line,
# followed by text on line.
@RULES
_objectiveZone [unsealed] <- _objectiveBoundary [s] @@
_referencesZone [unsealed] <- _referencesBoundary [s] @@



