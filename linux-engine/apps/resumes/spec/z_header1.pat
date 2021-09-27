###############################################
# FILE: z_header1.pat
# SUBJ: Count header subtype indicators.
# AUTH: Amnon Meyers
# CREATED: 03/Jan/00 16:00:52
# MODIFIED:
###############################################

@PATH _ROOT _LINE _header

@POST
  if (N("$end"))
	++X("end experience hdr");
  ++X("experience hdrs");
@RULES
_xNIL <- _ExperienceHeaderWord [s] @@
_xNIL <- _ExperienceHeaderPhrase [s] @@

@POST
  if (N("$end"))
	++X("end education hdr");
  ++X("education hdrs");
@RULES
_xNIL <- _EducationHeaderWord [s] @@
_xNIL <- _EducationHeaderPhrase [s] @@

@POST
  if (N("$end"))
	++X("end skills hdr");
  ++X("skills hdrs");
@RULES
_xNIL <- _SkillsHeaderWord [s] @@
_xNIL <- _SkillsHeaderPhrase [s] @@

