###############################################
# FILE: edu0.pat
# SUBJ: Knowledge based education parts.
# AUTH: Amnon Meyers
# CREATED: 20/Dec/99 11:04:56
# MODIFIED:
###############################################

@PATH _ROOT _educationZone _educationInstance _LINE

# General assumption is that if something is already present, then
# it was done at a higher confidence and should not be overwritten.

@CHECK
  if (X("city",3) || X("state",3))
	fail();
@POST
  X("city",3) = N("city");
  X("state",3) = N("state");
@RULES
_xNIL <- _cityState [s] @@

@CHECK
  if (X("country",3)) fail();
@POST
  X("country",3) = N("$text");
@RULES
_xNIL <- _country [s] @@

# If something isn't in the instance yet, place it there.
@POST
  if (!X("grade",3) && N("grade"))
	X("grade",3) = N("grade");
  if (!X("minor",3) && N("minor"))
	X("minor",3) = N("minor");
  if (!X("major",3) && N("major"))
	X("major",3) = N("major");

  if (!X("max grade",3) && N("max grade"))
	X("max grade",3) = N("max grade");
  if (!X("major grade",3) && N("major grade"))
	X("major grade",3) = N("major grade");
  if (!X("minor grade",3) && N("minor grade"))
	X("minor grade",3) = N("minor grade");
  # NOTE: fetching school,degree by other means, I think.	
  # noop()
@RULES
_xNIL <- _educationPart @@

# If city and state unassigned and a state is floating around
# on anchor line, use it.
@CHECK
  if (
  !X("city",3) && !X("state",3)
&&  N("len",1) <= 2
&& !N("capofcap",1)
&& !N("capandcap",1)
&& X("eduparts",4) > 1	# Anchor-like line.
    )
    succeed();
 fail();
	# "instance" doesn't appear in first line of first subzone...
@POST
  S("city") = N("$text",1);
  S("state") = N("$text",4);
  X("city",3) = N("$text",1);
  X("state",3) = N("$text",4);
  single();
@RULES
_cityState <-
	_Caps [s rename=(_city) layer=(_cityName)]
	\, [s]
	_xWHITE [s star]
	_state [s trig layer=(_stateName)]
	@@
