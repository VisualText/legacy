###############################################
# FILE: getEduParts.pat
# SUBJ: comment here
# CREATED: 18/Oct/99 10:38:54
###############################################

@NODES _LINE

@POST
  if (N("minor"))				# 12/20/99 AM.
     S("minor") = N("minor");		# 12/20/99 AM.
  if (N("major"))				# 12/20/99 AM.
     S("major") = N("major");		# 12/20/99 AM.
  if (N("school"))			# 12/20/99 AM.
     S("school") = N("school");	# 12/20/99 AM.
  if (N("degree"))			# 12/20/99 AM.
     S("degree") = N("degree");	# 12/20/99 AM.
  single();					# 12/20/99 AM.

@RULES

# Ex:	1983
_educationPart [] <-
	_xWILD	[min=1 max=1 s match=(
	_minor
	_major
	_CompleteSchoolName
#	_SchoolNamePhrase
#	_SchoolName
#	_SchoolRoot
	_degree
	)]
	@@


# 01/01/00 AM. Separating out grade.
@POST
  if (N("grade"))				# 12/20/99 AM.
     S("grade") = N("grade");		# 12/20/99 AM.
  S("max grade") = N("max grade");
  S("major grade") = N("major grade");
  S("minor grade") = N("minor grade");
  S("school type") = N("school type"); # eg, "undergraduate".
  single();
@RULES
_educationPart <- _Grade [s] @@



