
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\phoneNumber.pat
# TIME: 17:01:42 11/17/06
@NODES _LINE

@PRE
<3,3>	length(1);
<6,6>	length(3);
<8,8>	length(3);
<10,10>	length(4);
@RULES

# Ex:	(+1)\_321\_357\_8740
_phoneNumber <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] \+ [s] _xWILD [min=1 max=1 trig s layer=("_countryCode") match=("_monthNum" "1")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] _xWHITE [star s] _xNUM [s layer=("_areaCode")] _xWHITE [star s] _xNUM [s layer=("_prefix")] _xWHITE [star s] _xNUM [s layer=("_suffix")] @@

@PRE
<7,7>	length(4);
@RULES

# Ex:	1-555-379-2296
_phoneNumber <- _xNUM [s layer=("_countryCode")] \- [trig s] _xNUM [s layer=("_areaCode")] \- [s] _xNUM [s layer=("_prefix")] \- [s] _xNUM [s layer=("_suffix")] @@

@PRE
<2,2>	length(3);
<5,5>	length(3);
<9,9>	length(4);
@RULES

# Ex:	(415)\_929\_-\_7305
_phoneNumber <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xNUM [s layer=("_areaCode")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] _xWHITE [star s] _xNUM [s layer=("_prefix")] _xWHITE [star s] \- [s] _xWHITE [star s] _xNUM [s layer=("_suffix")] @@

@PRE
<1,1>	length(3);
<3,3>	length(3);
<5,5>	length(4);
@RULES

# Ex:	987-654-3210
_phoneNumber <- _xNUM [s layer=("_areaCode")] _xPUNCT [trig s] _xNUM [s layer=("_prefix")] _xPUNCT [s] _xNUM [s layer=("_suffix")] @@

@PRE
<1,1>	length(2);
<3,3>	length(3);
<5,5>	length(6);
@RULES

# Ex:	61-411-348700
_phoneNumber <- _xWILD [min=1 max=1 s layer=("_countryCode") match=("_year" "61")] \- [s] 411 [trig s layer=("_areaCode")] \- [s] 348700 [s layer=("_suffix")] @@

@PRE
<1,1>	length(3);
<3,3>	length(3);
<5,5>	length(4);
@RULES

# Ex:	123\_456-7890
_phoneNumber <- _xNUM [s layer=("_areaCode")] _xWHITE [star s] _xNUM [s layer=("_prefix")] \- [trig s] _xNUM [s layer=("_suffix")] @@

# Ex:	333\_333\_4444
_phoneNumber <- _xNUM [s layer=("_areaCode")] _xWHITE [star s] _xNUM [s layer=("_prefix")] _xWHITE [star s] _xNUM [s layer=("_suffix")] @@

@PRE
<2,2>	length(3);
<5,5>	length(3);
<7,7>	length(4);
@RULES

# Ex:	(234)\_567\_8901
_phoneNumber <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xNUM [s layer=("_areaCode")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] _xWHITE [star s] _xNUM [s layer=("_prefix")] _xWHITE [star s] _xNUM [s layer=("_suffix")] @@

# Ex:	(408)\_283-0605
_phoneNumber <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] 408 [trig s] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] _xWHITE [star s] 283 [s] \- [s] 0605 [s] @@

