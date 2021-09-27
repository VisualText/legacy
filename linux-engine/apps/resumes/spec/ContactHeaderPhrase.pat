
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\ContactHeaderPhrase.pat
# TIME: 16:57:54 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Personal\_Information
_ContactHeaderPhrase [layer=(_header )] <- Personal [s] _xWHITE [star s] Information [s] @@

