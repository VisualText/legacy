
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\phoneCellPhrase.pat
# TIME: 17:01:49 11/17/06
@NODES _LINE

@RULES

# Ex:	cell:\_(123)\_456-7890
_phoneCellPhrase <- _xWILD [min=1 max=1 s layer=("_Cell") match=("cell" "mobile" "Cellular")] \: [s] _xWHITE [star s] _phoneNumber [s] @@

# Ex:	(cell)\_(949)\_497-5318
_phoneCellPhrase <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Cell") match=("cell" "mobile" "Cellular")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] _xWHITE [star s] _phoneNumber [s] @@

# Ex:	cell\_(123)\_456-7890
_phoneCellPhrase <- _xWILD [min=1 max=1 s layer=("_Cell") match=("cell" "mobile" "Cellular")] _xWHITE [star s] _phoneNumber [s] @@

# Ex:	(123)\_456-7890\_(cell)
_phoneCellPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Cell") match=("cell" "mobile" "Cellular")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] @@

# Ex:	(123)\_456-7890\_cell
_phoneCellPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_Cell") match=("cell" "mobile" "Cellular")] @@

