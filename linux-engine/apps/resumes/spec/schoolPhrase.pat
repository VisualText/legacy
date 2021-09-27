
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\schoolPhrase.pat
# TIME: 17:00:19 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
@RULES

# Ex:	MIT
_schoolPhrase [layer=(_Caps )] <- MIT [s] @@

# Ex:	SJSU
_schoolPhrase [layer=(_Caps )] <- SJSU [s] @@

# Ex:	UCLA
_schoolPhrase [layer=(_Caps )] <- UCLA [s] @@

# Ex:	UCSB
_schoolPhrase [layer=(_Caps )] <- UCSB [s] @@

# Ex:	UCSD
_schoolPhrase [layer=(_Caps )] <- UCSD [s] @@

# Ex:	URI
_schoolPhrase [layer=(_Caps )] <- URI [s] @@

# Ex:	UNH
_schoolPhrase [layer=(_Caps )] <- UNH [s] @@

# Ex:	UMASS
_schoolPhrase [layer=(_Caps )] <- UMASS [s] @@

# Ex:	UPENN
_schoolPhrase [layer=(_Caps )] <- UPENN [s] @@

# Ex:	UNC
_schoolPhrase [layer=(_Caps )] <- UNC [s] @@

# Ex:	UMISS
_schoolPhrase [layer=(_Caps )] <- UMISS [s] @@

# Ex:	UH
_schoolPhrase [layer=(_Caps )] <- UH [s] @@

# Ex:	UC
_schoolPhrase [layer=(_Caps )] <- UC [s] @@

# Ex:	SUNY
_schoolPhrase [layer=(_Caps )] <- SUNY [s] @@

# Ex:	CALTECH
_schoolPhrase [layer=(_Caps )] <- CALTECH [s] @@

# Ex:	Citadel
_schoolPhrase [layer=(_Caps )] <- Citadel [s] @@

# Ex:	USNA
_schoolPhrase [layer=(_Caps )] <- USNA [s] @@

# Ex:	USMC
_schoolPhrase [layer=(_Caps )] <- USMC [s] @@

# Ex:	USAFA
_schoolPhrase [layer=(_Caps )] <- USAFA [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	West\_Point
_schoolPhrase [layer=(_Caps )] <- West [s] _xWHITE [star s] Point [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	SMU
_schoolPhrase [layer=(_Caps )] <- SMU [s] @@

# Ex:	LACC
_schoolPhrase [layer=(_Caps )] <- LACC [s] @@

# Ex:	CSU
_schoolPhrase [layer=(_Caps )] <- CSU [s] @@

# Ex:	UNSW
_schoolPhrase [layer=(_Caps )] <- UNSW [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
<5,5>	cap();
@RULES

# Ex:	M.I.T.
_schoolPhrase [layer=(_Caps )] <- M [s] \. [s] I [s] \. [s] T [s] \. [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
<5,5>	cap();
<7,7>	cap();
@RULES

# Ex:	S.J.S.U.
_schoolPhrase [layer=(_Caps )] <- S [s] \. [s] J [s] \. [s] S [s] \. [s] U [s] \. [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	U.C.L.A.
_schoolPhrase [layer=(_Caps )] <- U [s] \. [s] C [s] \. [s] _cityPhrase [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
<5,5>	cap();
<7,7>	cap();
@RULES

# Ex:	U.C.S.B.
_schoolPhrase [layer=(_Caps )] <- U [s] \. [s] C [s] \. [s] S [s] \. [s] B [s] \. [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	U.C.S.D.
_schoolPhrase [layer=(_Caps )] <- U [s] \. [s] C [s] \. [s] _statePhrase [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	U.R.I.
_schoolPhrase [layer=(_Caps )] <- U [s] \. [s] _statePhrase [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	U.MASS
_schoolPhrase [layer=(_Caps )] <- U [s] \. [s] MASS [s] @@

# Ex:	U.PENN
_schoolPhrase [layer=(_Caps )] <- U [s] \. [s] PENN [s] @@

# Ex:	U.MISS
_schoolPhrase [layer=(_Caps )] <- U [s] \. [s] MISS [s] @@

# Ex:	U.H.
_schoolPhrase [layer=(_Caps )] <- U [s] \. [s] H [s] \. [s] @@

# Ex:	U.C.
_schoolPhrase [layer=(_Caps )] <- U [s] \. [s] C [s] \. [s] @@

@PRE
<2,2>	cap();
<4,4>	cap();
@RULES

# Ex:	U.S.N.A.
_schoolPhrase [layer=(_Caps )] <- _countryPhrase [s] N [trig s] \. [s] A [s] \. [s] @@

# Ex:	U.S.M.C.
_schoolPhrase [layer=(_Caps )] <- _countryPhrase [s] M [trig s] \. [s] C [s] \. [s] @@

# Ex:	U.S.A.F.A.
_schoolPhrase [layer=(_Caps )] <- _countryPhrase [s] F [trig s] \. [s] A [s] \. [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
<5,5>	cap();
@RULES

# Ex:	S.M.U.
_schoolPhrase [layer=(_Caps )] <- S [s] \. [s] M [s] \. [s] U [s] \. [s] @@

@PRE
<2,2>	cap();
<4,4>	cap();
@RULES

# Ex:	L.A.C.C.
_schoolPhrase [layer=(_Caps )] <- _cityPhrase [s] C [trig s] \. [s] C [s] \. [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
<5,5>	cap();
@RULES

# Ex:	C.S.U.
_schoolPhrase [layer=(_Caps )] <- C [s] \. [s] S [s] \. [s] U [s] \. [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
<5,5>	cap();
<7,7>	cap();
@RULES

# Ex:	U.N.S.W.
_schoolPhrase [layer=(_Caps )] <- U [s] \. [s] N [s] \. [s] S [s] \. [s] W [s] \. [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Penn
_schoolPhrase [layer=(_Caps )] <- Penn [s] @@

# Ex:	Dartmouth
_schoolPhrase [layer=(_Caps )] <- Dartmouth [s] @@

# Ex:	Columbia
_schoolPhrase [layer=(_Caps )] <- Columbia [s] @@

# Ex:	Princeton
_schoolPhrase [layer=(_Caps )] <- Princeton [s] @@

# Ex:	Brown
_schoolPhrase [layer=(_Caps )] <- Brown [s] @@

# Ex:	Harvard
_schoolPhrase [layer=(_Caps )] <- Harvard [s] @@

# Ex:	Yale
_schoolPhrase [layer=(_Caps )] <- Yale [s] @@

# Ex:	Berkeley
_schoolPhrase [layer=(_Caps )] <- Berkeley [s] @@

# Ex:	Stanford
_schoolPhrase [layer=(_Caps )] <- Stanford [s] @@

# Ex:	Oxford
_schoolPhrase [layer=(_Caps )] <- Oxford [s] @@

# Ex:	Cambridge\r
_schoolPhrase [layer=(_Caps )] <- Cambridge [s] _xWHITE [star s] @@

