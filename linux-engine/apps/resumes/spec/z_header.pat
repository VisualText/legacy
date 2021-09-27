###############################################
# FILE: z_header.pat
# SUBJ: Headers as cap phrases
# AUTH: Amnon Meyers
# CREATED: 03/Jan/00 15:07:26
# MODIFIED:
###############################################

@PATH _ROOT _LINE _Caps

# But how to subtype headers!?
# Probably best is: decide you have a header first, then
# count up the subtype confidences...

@POST
  ++X("headerroots");
  if (N("$end"))
    ++X("end headerroot");
@RULES
_xNIL <- _headerWord [s] @@
_xNIL <- _header [s] @@		# Just in case this is allowed.

@POST
  ++X("headermods");
  if (N("$end"))
    ++X("end headermod");
@RULES
_xNIL <- _headerMod [s] @@



