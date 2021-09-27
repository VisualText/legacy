
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\phoneHomeFaxPhrase.pat
# TIME: 17:01:42 11/17/06
@NODES _LINE

@PRE
<1,1>	length(4);
<3,3>	length(3);
@POST
	group(1, 3, "_HomeFax");
	single();
@RULES

# Ex:	home/fax:\_(949)\_497-5318
_phoneHomeFaxPhrase <- _xWILD [min=1 max=1 s match=("home" "Home")] _xWILD [min=1 max=1 s match=("\/")] _xWILD [min=1 max=1 s match=("fax" "Fax")] \: [s] _xWHITE [star s] _phoneNumber [s] @@

# Ex:	home\_fax:\_(949)\_497-5318
_phoneHomeFaxPhrase <- _xWILD [min=1 max=1 s match=("home")] _xWHITE [star s] fax [s] \: [s] _xWHITE [star s] _phoneNumber [s] @@

@PRE
<3,3>	length(4);
<5,5>	length(3);
@POST
	group(3, 5, "_HomeFax");
	single();
@RULES

# Ex:	(949)\_497-5318\_home/fax
_phoneHomeFaxPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 trig s match=("home" "Home")] _xWILD [min=1 max=1 s match=("\/")] _xWILD [min=1 max=1 s match=("fax" "Fax")] @@

# Ex:	(949)\_497-5318\_home\_fax
_phoneHomeFaxPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 trig s match=("home")] _xWHITE [star s] fax [s] @@

@PRE
<4,4>	length(4);
<6,6>	length(3);
@POST
	group(4, 6, "_HomeFax");
	single();
@RULES

# Ex:	(949)\_497-5318\_(home/fax)
_phoneHomeFaxPhrase <- _phoneNumber [s] _xWHITE [star s] _xWILD [min=1 max=1 s match=("_openPunct" "\(")] _xWILD [min=1 max=1 trig s match=("home" "Home")] _xWILD [min=1 max=1 s match=("\/")] _xWILD [min=1 max=1 s match=("fax" "Fax")] _xWILD [min=1 max=1 s match=("_closePunct" "\)")] @@

