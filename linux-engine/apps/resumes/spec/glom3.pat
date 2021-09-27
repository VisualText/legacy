###############################################
# FILE: glom3.pat
# SUBJ: Adding terminators to cap phrases.
# AUTH: Amnon Meyers
# CREATED: 22/Dec/99 09:41:03
# MODIFIED:
# NOTE:	Another round of caps glomming could follow here...
###############################################

@PATH _ROOT _LINE


# Moving company pattern here.	# 12/22/99 AM.
# If cap phrase is well formed, could suggest _company here.
# (May still need to extend, eg, "Ford Motor Co. of America").
@POST
	N("glommed companyroot",1) = "true";
	N("company conf",1) = N("company conf",1) %% 95;
	++N("companyroots",1);
	++N("end companyroot",1);
	++N("len",1);
	listadd(1,4);
@RULES
_xNIL <- _Caps \, [s opt] _xWHITE [s star] _companyRoot [s] @@


