###############################################
# FILE: SchoolRoot.pat
# SUBJ: comment here
# CREATED: 11/Oct/99 11:43:09
###############################################

@NODES _LINE

@RULES

_SchoolRoot [] <-
 _xWILD [s one matches=(
       Conservatory Academy Universidad University College Colleges 
	School Institute Seminary Tech Univ Poly Polytechnic
	# State  # 12/15/99 AM. Don't like this one, w/o corroboration.
      )]
@@

# these are in the sample hierarchy, like MIT, UCSB...
_SchoolName [] <- _schoolPhrase [s]@@