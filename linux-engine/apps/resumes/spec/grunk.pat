
@PATH _ROOT _educationZone _educationInstance _LINE

@POST
if (!X("city",3))
  X("city",3) = N("$text");
# noop()
@RULES
_xNIL <- _city [s] @@

