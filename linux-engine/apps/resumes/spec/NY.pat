
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: D:\apps\Resume\spec\NY.pat
# TIME: Fri Nov 19 00:20:03 1999
@NODES _LINE

@PRE
<1,1>	cap()
<3,3>	cap()
@RULES

# Ex:	New\_York
_NY <- New [s] _xWHITE [star s] York [s] @@

@PRE
<1,1>	cap()
<4,4>	cap()
@RULES

# Ex:	N.\_Y.
_NY <- N [s] \. [s] _xWHITE [star s] Y [s] \. [s] @@

@PRE
<1,1>	cap()
@RULES

# Ex:	NY
_NY <- NY [s] @@

