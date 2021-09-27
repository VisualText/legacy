
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\phoneFaxPhrase.pat
# TIME: 17:01:47 11/17/06
@NODES _LINE

@PRE
<1,1>	length(3);
@RULES

# Ex:	fax:\_(123)\_456-7890
_phoneFaxPhrase <- _xWILD [min=1 max=1 s layer=("_Fax") match=("fax" "Fax")] \: [s] _xWHITE [star s] _phoneNumber [s] @@

@PRE
<2,2>	length(3);
@RULES

# Ex:	(fax)\_(949)\_497-5318
_phoneFaxPhrase <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Fax") match=("fax" "Fax")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] _xWHITE [star s] _phoneNumber [s] @@

@PRE
<1,1>	length(3);
@RULES

# Ex:	fax\_(123)\_456-7890
_phoneFaxPhrase <- _xWILD [min=1 max=1 s layer=("_Fax") match=("fax" "Fax")] _xWHITE [star s] _phoneNumber [s] @@

@PRE
<4,4>	length(3);
@RULES

# Ex:	(123)\_456-7890\_(fax)
_phoneFaxPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Fax") match=("fax" "Fax")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] @@

@PRE
<3,3>	length(3);
@RULES

# Ex:	(123)\_456-7890\_fax
_phoneFaxPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_Fax") match=("fax" "Fax")] @@

