
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: D:\apps\Resume\spec\university.pat
# TIME: Mon Jan 31 00:12:42 2000
@NODES _LINE

@PRE
<1,1>	cap()
<1,1>	length(4)
<3,3>	cap()
<3,3>	length(5)
@RULES

# Ex:	West\_Point
_university <- _xWILD [min=1 max=1 s match=(_cityMod _companyMod _jobMod _Direction West)] _xWHITE [star s] _xWILD [min=1 max=1 s match=(_PostalRoad Point)] @@

@PRE
<1,1>	cap()
<1,1>	length(1)
<3,3>	cap()
<3,3>	length(1)
<5,5>	cap()
<5,5>	length(1)
@RULES

# Ex:	S.M.U.
_university <- _xALPHA [s] \. [trig s] _xALPHA [s] \. [s] _xALPHA [s] \. [s] @@

@PRE
<1,1>	cap()
<1,1>	length(1)
<3,3>	cap()
<3,3>	length(1)
<5,5>	cap()
<5,5>	length(1)
<7,7>	cap()
<7,7>	length(1)
@RULES

# Ex:	U.C.S.B.
_university <- _xALPHA [s] \. [s] _xALPHA [s] \. [s] _xWILD [min=1 max=1 trig s match=(_Direction S)] \. [s] _xALPHA [s] \. [s] @@

@PRE
<1,1>	cap()
<1,1>	length(1)
<3,3>	cap()
<3,3>	length(4)
@RULES

# Ex:	U.PENN
_university <- U [s] \. [s] _xALPHA [s] @@

@PRE
<1,1>	cap()
<1,1>	length(1)
<3,3>	cap()
<3,3>	length(1)
@RULES

# Ex:	U.C.
_university <- U [s] \. [s] _xALPHA [s] \. [s] @@

