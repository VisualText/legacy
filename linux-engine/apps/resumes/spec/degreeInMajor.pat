
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\degreeInMajor.pat
# TIME: 16:57:56 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
<4,4>	cap();
<7,7>	cap();
<10,10>	cap();
@RULES

# Ex:	B.\_S.\_E.\_E.
_degreeInMajor <- B [s] \. [s] _xWHITE [star s] S [s] \. [s] _xWHITE [star s] E [s] \. [s] _xWHITE [star s] E [s] \. [s] @@

# Ex:	B.\_S.\_C.\_S.
_degreeInMajor <- B [s] \. [s] _xWHITE [star s] S [s] \. [s] _xWHITE [star s] C [s] \. [s] _xWHITE [star s] S [s] \. [s] @@

# Ex:	M.\_S.\_E.\_E.
_degreeInMajor <- M [s] \. [s] _xWHITE [star s] S [s] \. [s] _xWHITE [star s] E [s] \. [s] _xWHITE [star s] E [s] \. [s] @@

# Ex:	M.\_S.\_C.\_S.
_degreeInMajor <- M [s] \. [s] _xWHITE [star s] S [s] \. [s] _xWHITE [star s] C [s] \. [s] _xWHITE [star s] S [s] \. [s] @@

@PRE
<1,1>	cap();
<4,4>	cap();
<7,7>	cap();
@RULES

# Ex:	B.\_B.\_A.
_degreeInMajor <- B [s] \. [s] _xWHITE [star s] B [s] \. [s] _xWHITE [star s] A [s] \. [s] @@

# Ex:	M.\_B.\_A.
_degreeInMajor <- M [s] \. [s] _xWHITE [star s] B [s] \. [s] _xWHITE [star s] A [s] \. [s] @@

# Ex:	M.\_S.\_W.
_degreeInMajor <- M [s] \. [s] _xWHITE [star s] S [s] \. [s] _xWHITE [star s] W [s] \. [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
<5,5>	cap();
<7,7>	cap();
@RULES

# Ex:	B.S.E.E.
_degreeInMajor <- B [s] \. [s] S [s] \. [s] E [s] \. [s] E [s] \. [s] @@

# Ex:	B.S.C.S.
_degreeInMajor <- B [s] \. [s] S [s] \. [s] C [s] \. [s] S [s] \. [s] @@

# Ex:	M.S.E.E.
_degreeInMajor <- M [s] \. [s] S [s] \. [s] E [s] \. [s] E [s] \. [s] @@

@RULES

# Ex:	M.S.C.S.
_degreeInMajor <- _degreeInMajor [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
<5,5>	cap();
@RULES

# Ex:	B.B.A.
_degreeInMajor <- B [s] \. [s] B [s] \. [s] A [s] \. [s] @@

# Ex:	M.B.A.
_degreeInMajor <- M [s] \. [s] B [s] \. [s] A [s] \. [s] @@

# Ex:	M.S.W.
_degreeInMajor <- M [s] \. [s] S [s] \. [s] W [s] \. [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Juris\_Doctor
_degreeInMajor <- Juris [s] _xWHITE [star s] Doctor [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	BSCS
_degreeInMajor <- BSCS [s] @@

# Ex:	BSEE
_degreeInMajor <- BSEE [s] @@

# Ex:	MSEE
_degreeInMajor <- MSEE [s] @@

# Ex:	MSCS
_degreeInMajor <- MSCS [s] @@

# Ex:	BBA
_degreeInMajor <- BBA [s] @@

# Ex:	MBA
_degreeInMajor <- MBA [s] @@

# Ex:	BSW
_degreeInMajor <- BSW [s] @@

# Ex:	MSW
_degreeInMajor <- MSW [s] @@

