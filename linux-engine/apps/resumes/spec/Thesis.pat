
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\Thesis.pat
# TIME: 16:58:40 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
<5,5>	cap();
@RULES

# Ex:	Master's\_Project
_Thesis [layer=(_Caps )] <- Master [s] \' [s] s [s] _xWHITE [star s] Project [s] @@

# Ex:	Master's\_Thesis
_Thesis [layer=(_Caps )] <- Master [s] \' [s] s [s] _xWHITE [star s] Thesis [s] @@

# Ex:	Master's\_Work
_Thesis [layer=(_Caps )] <- Master [s] \' [s] s [s] _xWHITE [star s] Work [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Master\_Project
_Thesis [layer=(_Caps )] <- Master [s] _xWHITE [star s] Project [s] @@

# Ex:	Master\_Thesis
_Thesis [layer=(_Caps )] <- Master [s] _xWHITE [star s] Thesis [s] @@

# Ex:	Master\_Work
_Thesis [layer=(_Caps )] <- Master [s] _xWHITE [star s] Work [s] @@

# Ex:	Doctoral\_Dissertation
_Thesis [layer=(_Caps )] <- Doctoral [s] _xWHITE [star s] Dissertation [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Thesis
_Thesis [layer=(_Caps )] <- Thesis [s] @@

# Ex:	Dissertation
_Thesis [layer=(_Caps )] <- Dissertation [s] @@

