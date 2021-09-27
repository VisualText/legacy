
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\experiencePart.pat
# TIME: 17:03:05 11/17/06
@NODES _LINE

@RULES

# Ex:	1998-present
_experiencePart <- _DateRange [s] @@

# Ex:	Senior\_Software\_Engineer
_experiencePart <- _xWILD [min=1 max=1 s match=("_Caps" "_jobTitle")] @@

