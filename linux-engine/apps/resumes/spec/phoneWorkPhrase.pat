
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\phoneWorkPhrase.pat
# TIME: 17:01:46 11/17/06
@NODES _LINE

@RULES

# Ex:	Office:\_(949)\_497-5318\_x222
_phoneWorkPhrase <- _xWILD [min=1 max=1 s layer=("_Work") match=("Office" "Wk" "w" "O" "Work")] \: [s] _xWHITE [star s] _phoneNumber [s] _xWHITE [star s] _phoneExtension [s] @@

# Ex:	(949)\_497-5318\_x222\_(Office)
_phoneWorkPhrase <- _phoneNumber [s] _xWHITE [star s] _phoneExtension [s] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Work") match=("Office" "Wk" "O" "W" "work")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] @@

# Ex:	Office:\_(949)\_497-5318
_phoneWorkPhrase <- _xWILD [min=1 max=1 s layer=("_Work") match=("Office" "Wk" "w" "O" "Work")] \: [s] _xWHITE [star s] _phoneNumber [s] @@

# Ex:	(949)\_497-5318\_(Office)
_phoneWorkPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Work") match=("Office" "Wk" "O" "W" "work")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] @@

# Ex:	(949)\_497-5318\_x222\_Office
_phoneWorkPhrase <- _phoneNumber [s] _xWHITE [star s] _phoneExtension [s] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_Work") match=("Office" "Wk" "O" "W" "work")] @@

# Ex:	(949)\_497-5318\_Office
_phoneWorkPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_Work") match=("Office" "Wk" "O" "W" "work")] @@

# Ex:	(office)\_(949)\_497-5318\_x222
_phoneWorkPhrase <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Work") match=("office" "Wk" "W" "O" "Work")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] _xWHITE [star s] _phoneNumber [s] _xWHITE [star s] _phoneExtension [s] @@

# Ex:	(office)\_(949)\_497-5318
_phoneWorkPhrase <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Work") match=("office" "Wk" "W" "O" "Work")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] _xWHITE [star s] _phoneNumber [s] @@

# Ex:	(949)\_497-5318\_x222
_phoneWorkPhrase <- _phoneNumber [s] _xWHITE [star s] _phoneExtension [s] @@

