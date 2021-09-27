
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\phoneHomePhrase.pat
# TIME: 17:01:52 11/17/06
@NODES _LINE

@RULES

# Ex:	Home:\_(949)\_497-5318
_phoneHomePhrase <- _xWILD [min=1 max=1 s layer=("_Home") match=("Home" "Hm" "H" "Phone" "tel" "tele" "telephone" "voice" "R")] \: [s] _xWHITE [star s] _phoneNumber [s] @@

# Ex:	Home\_(949)\_497-5318
_phoneHomePhrase <- _xWILD [min=1 max=1 s layer=("_Home") match=("Home" "Hm" "H" "Phone" "tel" "tele" "telephone" "voice" "R")] _xWHITE [star s] _phoneNumber [s] @@

# Ex:	(949)\_497-5318\_(Hm)
_phoneHomePhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Home") match=("Hm" "H" "tel" "tele" "telephone" "voice" "R" "Home")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] @@

# Ex:	(949)\_497-5318\_Hm
_phoneHomePhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 trig s layer=("_Home") match=("Hm" "H" "tel" "tele" "telephone" "voice" "R" "Home")] @@

# Ex:	(Hm)\_(949)\_497-5318
_phoneHomePhrase <- _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s layer=("_Home") match=("Hm" "H" "tel" "tele" "telephone" "voice" "R" "Home")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] _xWHITE [star s] _phoneNumber [s] @@

