
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\jobPhrase.pat
# TIME: 17:00:18 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Customer\_Service
_jobPhrase [layer=(_Caps )] <- Customer [s] _xWHITE [star s] Service [s] @@

# Ex:	Customer\_Support
_jobPhrase [layer=(_Caps )] <- Customer [s] _xWHITE [star s] Support [s] @@

