###############################################
# FILE: schoolAbbrevs.pat
# SUBJ: comment here
# CREATED: 07/Oct/99 15:35:30
###############################################

@NODES _LINE
@PRE

<1,1>	cap()

@RULES

_CompleteSchoolName <- _xWILD [s one matches=(
MIT
SJSU
UCLA
USC
UCSB
UCSD
UCSC
URI
UMASS
SUNY
CALTECH
Citadel
USNA
USMA
USAFA
SMU
LACC
CSU
UNSW
)] @@

