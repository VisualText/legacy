
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\company.pat
# TIME: 17:02:31 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
<3,3>	cap();
<5,5>	cap();
@RULES

# Ex:	Absolute\_Real\_Time,\_Inc.
_company <- Absolute [s] _xWHITE [star s] Real [s] _xWHITE [star s] Time [s] \, [s] _xWHITE [star s] _companyRoot [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	General\_Instrument
_company <- General [s] _xWHITE [star s] Instrument [s] @@

