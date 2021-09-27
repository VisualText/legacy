
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\resumeWord.pat
# TIME: 17:00:36 11/17/06
@NODES _LINE

@PRE
<1,1>	cap();
<1,1>	length(1);
<4,4>	cap();
<4,4>	length(1);
@RULES

# Ex:	C.\_V.
_resumeWord <- _xWILD [min=1 max=1 s match=("C")] _xWILD [min=1 max=1 s match=("\.")] _xWHITE [star s] V [s] \. [s] @@

@PRE
<1,1>	cap();
<1,1>	length(10);
<3,3>	cap();
<3,3>	length(4);
@RULES

# Ex:	Curriculum\_Vita
_resumeWord <- _xWILD [min=1 max=1 s match=("Curriculum")] _xWHITE [star s] Vita [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Resumé
_resumeWord <- _xWILD [min=1 max=1 s match=("Resumé" "Résumé" "CV" "Resume")] @@

