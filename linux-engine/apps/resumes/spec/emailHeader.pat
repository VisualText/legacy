
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\emailHeader.pat
# TIME: 16:57:56 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
@RULES

# Ex:	E-mail:
_emailHeader <- E [s] \- [s] mail [s] \: [s] @@

@RULES

# Ex:	e-mail:
_emailHeader <- e [s] \- [s] mail [s] \: [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Email:
_emailHeader <- Email [s] \: [s] @@

@RULES

# Ex:	email:
_emailHeader <- email [s] \: [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Mail\_To\_:
_emailHeader <- Mail [s] _xWHITE [star s] To [s] _xWHITE [star s] \: [s] @@

@RULES

# Ex:	mailto:
_emailHeader <- mailto [s] \: [s] @@

