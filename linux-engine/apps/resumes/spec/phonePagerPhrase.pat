
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\phonePagerPhrase.pat
# TIME: 17:01:48 11/17/06
@NODES _LINE

@PRE
<1,1>	length(5);
@RULES

# Ex:	pager:\_(123)\_456-7890
_phonePagerPhrase <- _xWILD [min=1 max=1 s layer=("_Pager") match=("pager" "Pager")] \: [s] _xWHITE [star s] _phoneNumber [s] @@

@PRE
<2,2>	length(5);
@RULES

# Ex:	(pager)\_(949)\_497-5318
_phonePagerPhrase <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Pager") match=("pager" "Pager")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] _xWHITE [star s] _phoneNumber [s] @@

@PRE
<1,1>	length(5);
@RULES

# Ex:	pager\_(123)\_456-7890
_phonePagerPhrase <- _xWILD [min=1 max=1 s layer=("_Pager") match=("pager" "Pager")] _xWHITE [star s] _phoneNumber [s] @@

@PRE
<4,4>	length(5);
@RULES

# Ex:	(123)\_456-7890\_(pager)
_phonePagerPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Pager") match=("pager" "Pager")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] @@

@PRE
<3,3>	length(5);
@RULES

# Ex:	(123)\_456-7890\_pager
_phonePagerPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_Pager") match=("pager" "Pager")] @@

