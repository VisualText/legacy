
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\WebLinks.pat
# TIME: 16:57:56 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Back\_To
_WebLinks <- Back [s] _xWHITE [star s] To [s] @@

# Ex:	My\_Page
_WebLinks <- My [s] _xWHITE [star s] Page [s] @@

# Ex:	Cool\_Links
_WebLinks <- Cool [s] _xWHITE [star s] Links [s] @@

@PRE
<2,2>	cap();
@RULES

# Ex:	[Image]
_WebLinks <- \[ [s] Image [trig s] \] [s] @@

