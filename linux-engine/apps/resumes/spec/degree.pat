
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\degree.pat
# TIME: 16:57:56 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
<4,4>	cap();
@RULES

# Ex:	A.\_A.
_degree <- A [s] \. [s] _xWHITE [star s] A [s] \. [s] @@

# Ex:	A.\_S.
_degree <- A [s] \. [s] _xWHITE [star s] S [s] \. [s] @@

# Ex:	B.\_A.
_degree <- B [s] \. [s] _xWHITE [star s] A [s] \. [s] @@

# Ex:	B.\_S.
_degree <- B [s] \. [s] _xWHITE [star s] S [s] \. [s] @@

# Ex:	B.\_Sc.
_degree <- B [s] \. [s] _xWHITE [star s] Sc [s] \. [s] @@

# Ex:	M.\_A.
_degree <- M [s] \. [s] _xWHITE [star s] A [s] \. [s] @@

# Ex:	M.\_S.
_degree <- M [s] \. [s] _xWHITE [star s] S [s] \. [s] @@

# Ex:	M.\_Sc.
_degree <- M [s] \. [s] _xWHITE [star s] Sc [s] \. [s] @@

# Ex:	H.\_Sc.
_degree <- H [s] \. [s] _xWHITE [star s] Sc [s] \. [s] @@

# Ex:	Ph.\_D.
_degree <- Ph [s] \. [s] _xWHITE [star s] D [s] \. [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	A.A.
_degree <- A [s] \. [s] A [s] \. [s] @@

# Ex:	A.S.
_degree <- A [s] \. [s] S [s] \. [s] @@

# Ex:	B.A.
_degree <- B [s] \. [s] A [s] \. [s] @@

# Ex:	B.S.
_degree <- B [s] \. [s] S [s] \. [s] @@

# Ex:	B.Sc.
_degree <- B [s] \. [s] Sc [s] \. [s] @@

@RULES

# Ex:	M.A.
_degree <- _degree [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	M.S.
_degree <- M [s] \. [s] S [s] \. [s] @@

# Ex:	M.Sc.
_degree <- M [s] \. [s] Sc [s] \. [s] @@

# Ex:	H.Sc.
_degree <- H [s] \. [s] Sc [s] \. [s] @@

# Ex:	Ph.D.
_degree <- Ph [s] \. [s] D [s] \. [s] @@

@PRE
<1,1>	cap();
<4,4>	cap();
@RULES

# Ex:	A.\_A
_degree <- A [s] \. [s] _xWHITE [star s] A [s] @@

# Ex:	A.\_S
_degree <- A [s] \. [s] _xWHITE [star s] S [s] @@

# Ex:	B.\_A
_degree <- B [s] \. [s] _xWHITE [star s] A [s] @@

# Ex:	B.\_S
_degree <- B [s] \. [s] _xWHITE [star s] S [s] @@

# Ex:	B.\_Sc
_degree <- B [s] \. [s] _xWHITE [star s] Sc [s] @@

# Ex:	M.\_A
_degree <- M [s] \. [s] _xWHITE [star s] A [s] @@

# Ex:	M.\_S
_degree <- M [s] \. [s] _xWHITE [star s] S [s] @@

# Ex:	M.\_Sc
_degree <- M [s] \. [s] _xWHITE [star s] Sc [s] @@

# Ex:	H.\_Sc
_degree <- H [s] \. [s] _xWHITE [star s] Sc [s] @@

# Ex:	Ph.\_D
_degree <- Ph [s] \. [s] _xWHITE [star s] D [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	A.A
_degree <- A [s] \. [s] A [s] @@

# Ex:	A.S
_degree <- A [s] \. [s] S [s] @@

# Ex:	B.A
_degree <- B [s] \. [s] A [s] @@

# Ex:	B.S
_degree <- B [s] \. [s] S [s] @@

# Ex:	B.Sc
_degree <- B [s] \. [s] Sc [s] @@

# Ex:	M.A
_degree <- M [s] \. [s] A [s] @@

# Ex:	M.S
_degree <- M [s] \. [s] S [s] @@

# Ex:	M.Sc
_degree <- M [s] \. [s] Sc [s] @@

# Ex:	H.Sc
_degree <- H [s] \. [s] Sc [s] @@

# Ex:	Ph.D
_degree <- Ph [s] \. [s] D [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	AS
_degree <- AS [s] @@

# Ex:	BA
_degree <- BA [s] @@

# Ex:	BS
_degree <- BS [s] @@

# Ex:	BSc
_degree <- BSc [s] @@

# Ex:	MA
_degree <- MA [s] @@

# Ex:	MS
_degree <- MS [s] @@

# Ex:	MSc
_degree <- MSc [s] @@

# Ex:	PHD
_degree <- PHD [s] @@

# Ex:	HSC
_degree <- HSC [s] @@

