###############################################
# FILE: z_geo.pat
# SUBJ: Assessment as geographic cap phrase.
# AUTH: Amnon Meyers
# CREATED: 23/Dec/99 22:36:13
# MODIFIED:
###############################################

@PATH _ROOT _LINE _Caps

@POST
  ++X("citymods");
  if (N("$end"))
    ++X("end citymod");
  if (N("$start"))
    ++X("start citymod");
@RULES
_xNIL <- _cityMod [s] @@

@POST
  ++X("geos");
@RULES
_xNIL <- _xWILD [s one match=( _city _state _country )] @@



