
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\rez0_2\spec\ExperienceHeaderPhrase.pat
# TIME: 16:57:55 11/17/06
@NODES _LINE

@RULES

# Ex:	employment\_history
_ExperienceHeaderPhrase [layer=(_header )] <- employment [s] _xWHITE [star s] history [s] @@

# Ex:	employment\_experience
_ExperienceHeaderPhrase [layer=(_header )] <- employment [s] _xWHITE [star s] experience [s] @@

# Ex:	work\_experience
_ExperienceHeaderPhrase [layer=(_header )] <- work [s] _xWHITE [star s] experience [s] @@

@PRE
<1,1>	cap();
@RULES

# Ex:	Professional\_experience
_ExperienceHeaderPhrase [layer=(_header )] <- Professional [s] _xWHITE [star s] experience [s] @@

@PRE
<1,1>	cap();
<3,3>	cap();
@RULES

# Ex:	Career\_History
_ExperienceHeaderPhrase [layer=(_header )] <- Career [s] _xWHITE [star s] History [s] @@

# Ex:	WORK\_HISTORY
_ExperienceHeaderPhrase [layer=(_header )] <- WORK [s] _xWHITE [star s] HISTORY [s] @@

# Ex:	Project\_History
_ExperienceHeaderPhrase [layer=(_header )] <- Project [s] _xWHITE [star s] History [s] @@

