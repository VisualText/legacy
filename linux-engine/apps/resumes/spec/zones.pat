################################################################################
# FILE: zone.pat
# CR:   01/06/99 AM.
# SUBJ: Group zones by blanklines.
################################################################################

#@NODES _ROOT
@PATH _ROOT

@RULES

_REZZONE [unsealed] <- _xWILD [plus fail=(
  _contactBoundary
  _objectiveBoundary
  _educationBoundary
  _experienceBoundary
  _skillsBoundary
  _presentationsBoundary
  _publicationsBoundary
  _referencesBoundary
  _otherBoundary
  )] @@
