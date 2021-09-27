###############################################
# FILE: z_header2.pat
# SUBJ: Compute best header subtype.
# AUTH: Amnon Meyers
# CREATED: 03/Jan/00 16:14:34
# MODIFIED:
###############################################

@PATH _ROOT _LINE

# Should be a header from caps, not one from kb.  Need to flag.
@POST
  N("hi hdr conf") = 0;
  N("hi hdr class") = "NULL";
  if (N("end education hdr"))
	N("hi hdr class") = "edu";
  else if (N("end skills hdr"))
	N("hi hdr class") = "skills";
  else if (N("end experience hdr"))
	N("hi hdr class") = "exp";
  else if (N("education hdrs"))
	N("hi hdr class") = "edu";
  else if (N("skills hdrs"))
	N("hi hdr class") = "skills";
  else if (N("experience hdrs"))
	N("hi hdr class") = "exp";
@RULES
_xNIL <- _header @@

