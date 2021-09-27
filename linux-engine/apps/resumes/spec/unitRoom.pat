
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\unitRoom.pat
# TIME: 17:01:54 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
<6,6>	cap();
<6,6>	length(1);
@POST
	group(6, 8, "_room");
	single();
@RULES

# Ex:	Rm.\_#\_A-3333
_unitRoom <- _PostalUnit [s layer=("_unit")] \. [s] _xWHITE [star s] \# [s] _xWHITE [star s] _xALPHA [s] \- [s] _xNUM [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Rm.\_#\_2222
_unitRoom <- _PostalUnit [s layer=("_unit")] \. [s] _xWHITE [star s] \# [s] _xWHITE [star s] _xNUM [s layer=("_room")] @@

@PRE
<1,1>	cap();
<6,6>	cap();
<6,6>	length(1);
@RULES

# Ex:	Rm.\_#\_B
_unitRoom <- _PostalUnit [s layer=("_unit")] \. [s] _xWHITE [star s] \# [s] _xWHITE [star s] _xALPHA [s layer=("_room")] @@

@PRE
<1,1>	cap();
<5,5>	cap();
<5,5>	length(1);
@POST
	group(5, 7, "_room");
	single();
@RULES

# Ex:	Rm\_#\_A-3333
_unitRoom <- _PostalUnit [s layer=("_unit")] _xWHITE [star s] \# [s] _xWHITE [star s] _xALPHA [s] \- [s] _xNUM [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Rm\_#\_2222
_unitRoom <- _PostalUnit [s layer=("_unit")] _xWHITE [star s] \# [s] _xWHITE [star s] _xNUM [s layer=("_room")] @@

@PRE
<1,1>	cap();
<5,5>	cap();
<5,5>	length(1);
@RULES

# Ex:	Rm\_#\_B
_unitRoom <- _PostalUnit [s layer=("_unit")] _xWHITE [star s] \# [s] _xWHITE [star s] _xALPHA [s layer=("_room")] @@

@PRE
<1,1>	cap();
<4,4>	cap();
<4,4>	length(1);
@POST
	group(4, 6, "_room");
	single();
@RULES

# Ex:	Rm.\_A-3333
_unitRoom <- _PostalUnit [s layer=("_unit")] \. [s] _xWHITE [star s] _xALPHA [s] \- [s] _xNUM [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Rm.\_2222
_unitRoom <- _PostalUnit [s layer=("_unit")] \. [s] _xWHITE [star s] _xNUM [s layer=("_room")] @@

@PRE
<1,1>	cap();
<4,4>	cap();
<4,4>	length(1);
@RULES

# Ex:	Rm.\_B
_unitRoom <- _PostalUnit [s layer=("_unit")] \. [s] _xWHITE [star s] _xALPHA [s layer=("_room")] @@

@PRE
<1,1>	cap();
<3,3>	cap();
<3,3>	length(1);
@POST
	group(3, 5, "_room");
	single();
@RULES

# Ex:	Rm\_A-3333
_unitRoom <- _PostalUnit [s layer=("_unit")] _xWHITE [star s] _xALPHA [s] \- [s] _xNUM [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Rm\_2222
_unitRoom <- _PostalUnit [s layer=("_unit")] _xWHITE [star s] _xNUM [s layer=("_room")] @@

@PRE
<3,3>	cap();
<3,3>	length(1);
@RULES

# Ex:	Rm\_B
_unitRoom <- _PostalUnit [s layer=("_unit")] _xWHITE [star s] _xALPHA [s layer=("_room")] @@

@PRE
<3,3>	cap();
<3,3>	length(1);
@POST
	group(3, 5, "_room");
	single();
@RULES

# Ex:	#\_A-3333
_unitRoom <- \# [s] _xWHITE [star s] _xALPHA [s] \- [s] _xNUM [s] @@

@RULES

# Ex:	#\_2222
_unitRoom <- \# [s] _xWHITE [star s] _xNUM [s layer=("_room")] @@

@PRE
<3,3>	cap();
<3,3>	length(1);
@RULES

# Ex:	#\_B
_unitRoom <- \# [s] _xWHITE [star s] _xALPHA [s layer=("_room")] @@

