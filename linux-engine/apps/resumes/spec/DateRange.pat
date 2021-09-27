
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\DateRange.pat
# TIME: 17:02:36 11/17/06
@NODES _LINE

@RULES

# Ex:	August\_1995\_through\_January\_1996
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] through [trig s layer=("_dateSep")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

# Ex:	October,\_1997\_to\_December,\_1997
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] to [trig s layer=("_dateSep")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

# Ex:	January,\_1998\_to\_present
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] to [trig s layer=("_dateSep")] _xWHITE [star s] present [s layer=("_toDate")] @@

@PRE
<5,5>	cap();
@RULES

# Ex:	May\_1998\_to\_Present
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] to [trig s layer=("_dateSep")] _xWHITE [star s] Present [s layer=("_toDate")] @@

@RULES

# Ex:	Nov.\_1991\_to\_date
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] to [trig s layer=("_dateSep")] _xWHITE [star s] date [s layer=("_toDate")] @@

# Ex:	1998\_to\_present
_DateRange <- 1998 [s layer=("_fromDate")] _xWHITE [star s] to [s layer=("_dateSep")] _xWHITE [star s] present [s layer=("_toDate")] @@

# Ex:	1994\_to\_1995
_DateRange <- 1994 [s layer=("_fromDate")] _xWHITE [star s] to [s layer=("_dateSep")] _xWHITE [star s] 1995 [s layer=("_toDate")] @@

# Ex:	1995\_to\_Summer\_96
_DateRange <- 1995 [s layer=("_fromDate")] _xWHITE [star s] to [s layer=("_dateSep")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

@PRE
<5,5>	cap();
@RULES

# Ex:	Jun\_97\_-\_Present
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] \- [s layer=("_dateSep")] _xWHITE [star s] Present [trig s layer=("_toDate")] @@

@RULES

# Ex:	Oct\_91\_-\_June\_95
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] \- [s layer=("_dateSep")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

# Ex:	5/1998\_-\_present
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] \- [s layer=("_dateSep")] _xWHITE [star s] present [trig s layer=("_toDate")] @@

# Ex:	08/95\_–\_12/96
#_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] – [s layer=("_dateSep")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

@POST
	group(3, 4, "_dateSep");
	single();
@RULES

# Ex:	08/92\_--\_06/94
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] \- [s] \- [s] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

@RULES

# Ex:	(4-96\_?)
_DateRange <- \( [s] _SingleDate [trig s layer=("_fromDate")] _xWHITE [star s] \? [s layer=("_toDate")] \) [s] @@

# Ex:	(10-95\_4-96)
_DateRange <- \( [s] _SingleDate [trig s layer=("_fromDate")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] \) [s] @@

# Ex:	1994\_-\_1995
_DateRange <- 1994 [s layer=("_fromDate")] _xWHITE [star s] \- [s layer=("_dateSep")] _xWHITE [star s] 1995 [s layer=("_toDate")] @@

# Ex:	1999\_-\_2000
_DateRange <- 1999 [s layer=("_fromDate")] _xWHITE [star s] \- [s layer=("_dateSep")] _xWHITE [star s] 2000 [s layer=("_toDate")] @@

# Ex:	1992\_–\_1994
#_DateRange <- 1992 [s layer=("_fromDate")] _xWHITE [star s] – [s layer=("_dateSep")] _xWHITE [star s] 1994 [s layer=("_toDate")] @@

# Ex:	1991\_–\_1993
#_DateRange <- 1991 [s layer=("_fromDate")] _xWHITE [star s] – [s layer=("_dateSep")] _xWHITE [star s] 1993 [s layer=("_toDate")] @@

# Ex:	1992\_-\_5/1998
_DateRange <- 1992 [s layer=("_fromDate")] _xWHITE [star s] \- [s layer=("_dateSep")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

# Ex:	1994\_-\_5/1998
_DateRange <- 1994 [s layer=("_fromDate")] _xWHITE [star s] \- [s layer=("_dateSep")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

# Ex:	1991-93
_DateRange <- 1991 [s layer=("_fromDate")] \- [s layer=("_dateSep")] 93 [s layer=("_toDate")] @@

# Ex:	1988-91
_DateRange <- 1988 [s layer=("_fromDate")] \- [s layer=("_dateSep")] 91 [s layer=("_toDate")] @@

# Ex:	1999\_to\_date
_DateRange <- 1999 [s layer=("_fromDate")] _xWHITE [star s] to [s layer=("_dateSep")] _xWHITE [star s] date [s layer=("_toDate")] @@

# Ex:	2-4-85\_4-28-99
_DateRange <- 2 [s] \- [s] _SingleDate [s] _xWHITE [star s] _SingleDate [s] @@

# Ex:	4.25.02\_5.30.10
_DateRange <- 4 [s] \. [s] 25 [s] \. [s] 02 [s] _xWHITE [star s] 5 [s] \. [s] 30 [s] \. [s] 10 [s] @@

# Ex:	October,\_1997\_to\_December,\_1997
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_dateSep") match=("to" "through")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

@PRE
<3,3>	length(2);
@RULES

# Ex:	May\_1998\_to\_Present
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_dateSep") match=("to")] _xWHITE [star s] _Present [s layer=("_toDate")] @@

@PRE
<1,1>	length(4);
<3,3>	length(2);
@RULES

# Ex:	1999\_to\_date
_DateRange <- _xWILD [min=1 max=1 s layer=("_fromDate") match=("_SingleDate" "_yearSD" "_year")] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_dateSep") match=("to")] _xWHITE [star s] _Present [s layer=("_toDate")] @@

@PRE
<1,1>	length(4);
<3,3>	length(2);
<5,5>	length(4);
@RULES

# Ex:	1994\_to\_1995
_DateRange <- _xWILD [min=1 max=1 s layer=("_fromDate") match=("_SingleDate" "_yearSD" "_year" "1994")] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_dateSep") match=("to")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_toDate") match=("_SingleDate" "_yearSD" "_year" "1995")] @@

@PRE
<1,1>	length(4);
<3,3>	length(2);
@RULES

# Ex:	1995\_to\_Summer\_96
_DateRange <- _xWILD [min=1 max=1 s layer=("_fromDate") match=("_SingleDate" "_yearSD" "_year" "1995")] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_dateSep") match=("to")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

@PRE
<5,5>	length(7);
@RULES

# Ex:	5/1998\_-\_present
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_dateSep") match=("\-")] _xWHITE [star s] _Present [s layer=("_toDate")] @@

@RULES

# Ex:	Oct\_91\_-\_June\_95
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_dateSep") match=("\-")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

@POST
	group(3, 4, "_dateSep");
	single();
@RULES

# Ex:	08/92\_--\_06/94
_DateRange <- _SingleDate [s layer=("_fromDate")] _xWHITE [star s] _xWILD [min=1 max=1 s match=("\-")] _xWILD [min=1 max=1 s match=("\-")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

@RULES

# Ex:	(4-96\_?)
_DateRange <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _SingleDate [trig s layer=("_fromDate")] _xWHITE [star s] \? [s layer=("_toDate")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] @@

# Ex:	(10-95\_4-96)
_DateRange <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _SingleDate [trig s layer=("_fromDate")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] @@

@PRE
<1,1>	length(4);
<5,5>	length(4);
@RULES

# Ex:	1999\_-\_2000
_DateRange <- _xWILD [min=1 max=1 s layer=("_fromDate") match=("_SingleDate" "_yearSD" "_year")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_dateSep") match=("\-")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_toDate") match=("_SingleDate" "_yearSD" "_year")] @@

@PRE
<1,1>	length(4);
@RULES

# Ex:	1994\_-\_5/1998
_DateRange <- _xWILD [min=1 max=1 s layer=("_fromDate") match=("_SingleDate" "_yearSD" "_year")] _xWHITE [star s] _xWILD [min=1 max=1 s layer=("_dateSep") match=("\-")] _xWHITE [star s] _SingleDate [s layer=("_toDate")] @@

@PRE
<1,1>	length(4);
<3,3>	length(2);
@RULES

# Ex:	1988-91
_DateRange <- _xWILD [min=1 max=1 s layer=("_fromDate") match=("_SingleDate" "_yearSD" "_year")] _xWILD [min=1 max=1 s layer=("_dateSep") match=("\-")] _year [s layer=("_toDate")] @@

@PRE
<1,1>	length(1);
@RULES

# Ex:	2-4-85\_4-28-99
_DateRange <- _xWILD [min=1 max=1 s match=("_monthNum" "2")] \- [s] _SingleDate [s] _xWHITE [star s] _SingleDate [s] @@

@PRE
<1,1>	length(1);
<3,3>	length(2);
<5,5>	length(2);
<7,7>	length(1);
<9,9>	length(2);
<11,11>	length(2);
@RULES

# Ex:	4.25.02\_5.30.10
_DateRange <- _xWILD [min=1 max=1 s match=("_monthNum" "4")] \. [s] 25 [trig s] \. [s] _xWILD [min=1 max=1 s match=("_monthNum" "02")] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_monthNum" "5")] \. [s] 30 [s] \. [s] _xWILD [min=1 max=1 s match=("_monthNum" "10")] @@

