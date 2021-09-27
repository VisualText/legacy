
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\Direction.pat
# TIME: 17:00:36 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
@RULES

# Ex:	North
_Direction <- _xWILD [min=1 max=1 s match=("North" "South" "East" "West" "NE" "NW" "SE" "SW" "N"
 "S" "E" "W")] @@

