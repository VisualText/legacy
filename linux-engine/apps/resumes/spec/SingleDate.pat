
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\SingleDate.pat
# TIME: 17:02:34 11/17/06
@NODES _LINE

@PRE
<3,3>	cap();
@POST
	S("daySD") = N("$text", 1);;
	S("monthSD") = N("$text", 3);;
	S("yearSD") = N("$text", 7);;
	single();
@RULES

# Ex:	3\_Sept.,\_99
_SingleDate <- _xNUM [s layer=("_daySD")] _xWHITE [star s] _monthWord [trig s layer=("_monthSD")] \. [s] \, [s] _xWHITE [star s] _year [s layer=("_yearSD")] @@

@PRE
<3,3>	cap();
@POST
	S("daySD") = N("$text", 1);;
	S("monthSD") = N("$text", 3);;
	S("yearSD") = N("$text", 6);;
	single();
@RULES

# Ex:	31\_Sept.\_2010
_SingleDate <- _xNUM [s layer=("_daySD")] _xWHITE [star s] _monthWord [trig s layer=("_monthSD")] _xPUNCT [s] _xWHITE [star s] _year [s layer=("_yearSD")] @@

@PRE
<3,3>	cap();
@POST
	S("daySD") = N("$text", 1);;
	S("monthSD") = N("$text", 3);;
	S("yearSD") = N("$text", 5);;
	single();
@RULES

# Ex:	17\_September\_90
_SingleDate <- _xNUM [s layer=("_daySD")] _xWHITE [star s] _monthWord [trig s layer=("_monthSD")] _xWHITE [star s] _year [s layer=("_yearSD")] @@

@PRE
<1,1>	cap();
@POST
	S("monthSD") = N("$text", 1);;
	S("daySD") = N("$text", 4);;
	S("yearSD") = N("$text", 7);;
	single();
@RULES

# Ex:	Oct.\_9,\_'51
_SingleDate <- _monthWord [s layer=("_monthSD")] \. [s] _xWHITE [star s] _xNUM [s layer=("_daySD")] \, [s] _xWHITE [star s] _year [s layer=("_yearSD")] @@

@PRE
<1,1>	cap();
@POST
	S("monthSD") = N("$text", 1);;
	S("daySD") = N("$text", 3);;
	S("yearSD") = N("$text", 6);;
	single();
@RULES

# Ex:	Sept\_3,\_1999
_SingleDate <- _monthWord [s layer=("_monthSD")] _xWHITE [star s] _xNUM [s layer=("_daySD")] \, [s] _xWHITE [star s] _year [s layer=("_yearSD")] @@

@PRE
<1,1>	cap();
@POST
	S("monthSD") = N("$text", 1);;
	S("yearSD") = N("$text", 5);;
	single();
@RULES

# Ex:	Jan.,\_94
_SingleDate <- _monthWord [s layer=("_monthSD")] \. [s] \, [s] _xWHITE [star s] _year [s layer=("_yearSD")] @@

@PRE
<1,1>	cap();
@POST
	S("monthSD") = N("$text", 1);;
	S("yearSD") = N("$text", 4);;
	single();
@RULES

# Ex:	Oct.\_'93
_SingleDate <- _monthWord [s layer=("_monthSD")] \. [s] _xWHITE [star s] _year [s layer=("_yearSD")] @@

# Ex:	Sept.\_2000
_SingleDate <- _monthWord [s layer=("_monthSD")] _xPUNCT [s] _xWHITE [star s] _year [s layer=("_yearSD")] @@

@PRE
<1,1>	cap();
@POST
	S("monthSD") = N("$text", 1);;
	S("yearSD") = N("$text", 3);;
	single();
@RULES

# Ex:	Jun/88
_SingleDate <- _monthWord [s layer=("_monthSD")] \/ [s] _year [s layer=("_yearSD")] @@

# Ex:	Aug\_'89
_SingleDate <- _monthWord [s layer=("_monthSD")] _xWHITE [star s] _year [s layer=("_yearSD")] @@

@PRE
<1,1>	cap();
@POST
	S("seasonSD") = N("$text", 1);;
	S("yearSD") = N("$text", 3);;
	single();
@RULES

# Ex:	Winter\_'88
_SingleDate <- _Season [s layer=("_seasonSD")] _xWHITE [star s] _year [s layer=("_yearSD")] @@

@POST
	S("numA") = N("$text", 1);;
	S("numB") = N("$text", 3);;
	S("yearSD") = N("$text", 5);;
	single();
@RULES

# Ex:	31/31/99
_SingleDate <- _xNUM [s layer=("_numA")] _xPUNCT [s] _xNUM [s layer=("_numB")] _xPUNCT [s] _year [trig s layer=("_yearSD")] @@

@POST
	S("monthSD") = N("$text", 1);;
	S("yearSD") = N("$text", 3);;
	single();
@RULES

# Ex:	7/88
_SingleDate <- _monthNum [s layer=("_monthSD")] _xPUNCT [s] _year [s layer=("_yearSD")] @@

@PRE
<1,1>	length(4);
@POST
	S("yearSD") = N("$text", 1);;
	single();
@RULES

# Ex:	1995
_SingleDate <- _year [s layer=("_yearSD")] @@

