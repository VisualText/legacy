###############################################
# FILE: z_company.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 28/Dec/99 19:32:10
# MODIFIED:
###############################################

@PATH _ROOT _LINE _Caps


@POST
  ++X("companyroots");
  if (N("$end"))
    ++X("end companyroot");
@RULES
_xNIL <- _companyRoot [s] @@

@POST
  ++X("companymodroots");
  if (N("$end"))
    ++X("end companymodroot");
@RULES
_xNIL <- _companyModroot [s] @@

@POST
  ++X("companymods");
@RULES
_xNIL <- _companyMod [s] @@


@POST
  ++X("companyphrase");
@RULES
_xNIL <- _companyPhrase [s] @@


