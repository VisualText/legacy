
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\addressLine.pat
# TIME: 17:01:57 11/17/06
@NODES _LINE

@PRE
<3,3>	cap();
<5,5>	length(1);
<7,7>	cap();
<9,9>	cap();
@POST
	group(3, 7, "_streetName");
	single();
@RULES

# Ex:	1234\_Blipper's\_Grunk\_Road
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _xALPHA [s] \' [s] s [trig s] _xWHITE [star s] _xALPHA [s] _xWHITE [star s] _PostalRoad [s layer=("_road")] @@

@PRE
<3,3>	cap();
<5,5>	cap();
<7,7>	cap();
<10,10>	cap();
<10,10>	length(5);
@POST
	group(3, 5, "_streetName");
	single();
@RULES

# Ex:	999\_Purple\_Sage\_Ave.\_South
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _xALPHA [s] _xWHITE [star s] _xALPHA [s] _xWHITE [star s] _PostalRoad [trig s layer=("_road")] \. [s] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_postdirection") match=("_cityMod" "_Direction")] @@

@PRE
<3,3>	cap();
<5,5>	cap();
<5,5>	length(4);
<7,7>	cap();
<9,9>	cap();
<9,9>	length(4);
@POST
	group(3, 5, "_streetName");
	single();
@RULES

# Ex:	33\_Grand\_View\_Rd\_East
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _xALPHA [s] _xWHITE [star s] _PostalRoad [trig s] _xWHITE [star s] _PostalRoad [s layer=("_road")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_postdirection") match=("_cityMod" "_Direction")] @@

@PRE
<3,3>	cap();
<5,5>	cap();
<7,7>	cap();
@RULES

# Ex:	33\_Grand\_Rd\_East
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _xALPHA [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [trig s layer=("_road")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_postdirection") match=("_cityMod" "_Direction")] @@

@PRE
<1,1>	length(3);
<3,3>	cap();
<3,3>	length(1);
<5,5>	cap();
<7,7>	cap();
<7,7>	length(4);
@RULES

# Ex:	333\_N\_Blipper\_Road
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _Direction [trig s layer=("_direction")] _xWHITE [star s] _xALPHA [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [s layer=("_road")] @@

@PRE
<1,1>	length(4);
<3,3>	cap();
<3,3>	length(6);
<5,5>	cap();
<5,5>	length(5);
<7,7>	cap();
<7,7>	length(6);
@POST
	group(3, 5, "_streetName");
	single();
@RULES

# Ex:	1015\_Marlin\_Lakes\_Circle
_addressLine <- 1015 [s layer=("_streetNumber")] _xWHITE [star s] Marlin [s] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_PostalRoad" "Lakes")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_road") match=("_PostalRoad" "Circle")] @@

@PRE
<3,3>	cap();
<5,5>	cap();
<8,8>	cap();
<8,8>	length(5);
@RULES

# Ex:	999\_Sage\_Ave.\_South
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _xALPHA [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [trig s layer=("_road")] \. [s] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_postdirection") match=("_cityMod" "_Direction")] @@

@PRE
<1,1>	length(3);
<5,5>	cap();
<5,5>	length(4);
@RULES

# Ex:	260\_San\_Leandro\_Blvd
_addressLine <- 260 [s layer=("_streetNumber")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_streetName") match=("_city" "_Caps" "_cityPhrase")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_road") match=("_PostalRoad" "Blvd")] @@

@PRE
<1,1>	length(2);
<3,3>	cap();
<3,3>	length(4);
<6,6>	cap();
<6,6>	length(2);
@RULES

# Ex:	45\_Worm\_Apple\_Rd.
_addressLine <- 45 [s layer=("_streetNumber")] _xWHITE [star s] Worm [s] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_Caps" "_hardware")] _xWILD [min=1 max=1 s layer=("_road") match=("_PostalRoad" "Rd")] \. [s] @@

@PRE
<1,1>	length(3);
<3,3>	cap();
<3,3>	length(1);
<5,5>	cap();
<7,7>	cap();
@RULES

# Ex:	201\_S\_Occidental\_Blvd.
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _Direction [trig s layer=("_direction")] _xWHITE [star s] _xALPHA [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [s layer=("_road")] \. [s] @@

@PRE
<1,1>	length(3);
<3,3>	cap();
<3,3>	length(3);
<5,5>	cap();
<5,5>	length(4);
<7,7>	cap();
<7,7>	length(4);
@POST
	group(3, 5, "_streetName");
	single();
@RULES

# Ex:	111\_Ink\_Spot\_Blvd.
_addressLine <- 111 [s layer=("_streetNumber")] _xWHITE [star s] Ink [s] _xWHITE [star s] Spot [s] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_road") match=("_PostalRoad" "Blvd")] \. [s] @@

@PRE
<3,3>	cap();
<7,7>	cap();
@RULES

# Ex:	233\_S\_11th\_St.
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _Direction [trig s layer=("_direction")] _xWHITE [star s] _ordinal [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [s layer=("_road")] \. [s] @@

# Ex:	233\_S\_11th\_St
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _Direction [trig s layer=("_direction")] _xWHITE [star s] _ordinal [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [s layer=("_road")] @@

@PRE
<3,3>	cap();
<5,5>	cap();
@RULES

# Ex:	18\_Peters\_Street
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _xALPHA [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [trig s layer=("_road")] @@

@PRE
<3,3>	cap();
<3,3>	length(8);
<5,5>	cap();
<5,5>	length(2);
@RULES

# Ex:	2904\_Ridgerow\_Dr.
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _xALPHA [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [trig s layer=("_road")] \. [s] @@

@PRE
<3,3>	cap();
<3,3>	length(1);
<5,5>	cap();
<5,5>	length(1);
<10,10>	cap();
@POST
	group(3, 6, "_direction");
	single();
@RULES

# Ex:	123\_N.E.\_82nd\_Rd.
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _Direction [trig s] \. [s] _Direction [s] \. [s] _xWHITE [star s] _ordinal [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [s layer=("_road")] \. [s] @@

@PRE
<5,5>	cap();
<7,7>	cap();
@RULES

# Ex:	602\_17th\_Ave\_E
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _ordinal [trig s layer=("_streetName")] _xWHITE [star s] _PostalRoad [s layer=("_road")] _xWHITE [star s] _Direction [s layer=("_postdirection")] @@

@PRE
<5,5>	cap();
<5,5>	length(2);
<8,8>	cap();
<8,8>	length(1);
@RULES

# Ex:	222\_9th\_Rd.\_E.
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _ordinal [trig s layer=("_streetName")] _xWHITE [star s] _PostalRoad [s layer=("_road")] \. [s] _xWHITE [star s] _Direction [s layer=("_postdirection")] \. [s] @@

@PRE
<3,3>	cap();
<3,3>	length(1);
<6,6>	cap();
<8,8>	cap();
@RULES

# Ex:	22\_W.\_Grinch\_Road
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _Direction [trig s layer=("_direction")] \. [s] _xWHITE [star s] _xALPHA [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [s layer=("_road")] @@

@PRE
<3,3>	cap();
<3,3>	length(1);
<6,6>	cap();
<6,6>	length(6);
<8,8>	cap();
@RULES

# Ex:	905\_S.\_Walker\_Ave.
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _Direction [trig s layer=("_direction")] \. [s] _xWHITE [star s] _xALPHA [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [s layer=("_road")] \. [s] @@

@PRE
<3,3>	cap();
<3,3>	length(1);
<8,8>	cap();
@RULES

# Ex:	123\_E.\_133rd\_Blvd
_addressLine <- _xNUM [s layer=("_streetNumber")] _xWHITE [star s] _Direction [trig s layer=("_direction")] \. [s] _xWHITE [star s] _ordinal [s layer=("_streetName")] _xWHITE [star s] _PostalRoad [s layer=("_road")] @@

@RULES

# Ex:	P.O.\_Box\_3
_addressLine <- _xWILD [min=1 max=1 s match=("_addressLine" "_poBoxNumber")] @@

