###############################################
# FILE: stNames.pat
# SUBJ: Saint Names
# CREATED: 07/Oct/99 13:37:25
###############################################

@NODES _LINE

@RULES

_saintName <- 
	_xWILD [s min=1 max=1 matches=(
Agnes
Albert
Ambrose
Andrew
Andrews
Anselm
Anthony
Aquinas
Augustine
Bonaventure
Benedict
Boniface
Catherine
Clare
Cloud
Edward
Elizabeth
Francis
John
Joseph
Lawrence
Leo
Louis
Martin
Mary
Michael
Norbert
Olaf
Patrick
Paul
Peter
Pierre
Rose
Scholastica
Thomas
Vincent
Virgil
Xavier
)] 
@@

_humanName <- 
	_humanNamePart [s layer = (_firstName)]
	_xWHITE [s]
	_jobTitleRoot [s layer = (_lastName)]
@@
