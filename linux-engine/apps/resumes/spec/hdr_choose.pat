###############################################
# FILE: hdr_choose.pat
# SUBJ: Choose header subtype.
# AUTH: Amnon Meyers
# CREATED: 03/Jan/00 16:12:51
# MODIFIED:
###############################################

@PATH _ROOT _LINE

# If already there, don't do it again.
@POST
  noop();
@RULES
_xNIL <- _xWILD [s one match=(
	_ExperienceHeaderPhrase _EducationHeaderPhrase
	_SkillsHeaderPhrase)]
	@@

@CHECK
  if (N("hi hdr class") != "exp") fail();
@POST
  noop();
@RULES
_xNIL <- _header [s rename=_ExperienceHeaderPhrase] @@

@CHECK
  if (N("hi hdr class") != "edu") fail();
@POST
  noop();
@RULES
_xNIL <- _header [s rename=_EducationHeaderPhrase] @@

@CHECK
  if (N("hi hdr class") != "skills") fail();
@POST
  noop();
@RULES
_xNIL <- _header [s rename=_SkillsHeaderPhrase] @@
