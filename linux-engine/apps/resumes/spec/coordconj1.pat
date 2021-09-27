###############################################
# FILE: coordconj1.pat
# SUBJ: gets Franklin & Marshall, Lewis & Clark, A&M, A&T.
# CREATED: 07/Oct/99 15:50:49
###############################################

@NODES _LINE

@RULES

# College and Univertity, Institute & Seminary
_SchoolRoot [] <- _SchoolRoot _xWHITE
	_xWILD [s one match = (and And \&)] _xWHITE _SchoolRoot @@

# A&M
_SchoolName [] <-	A [s]	\& M [s] @@
# A&T
_SchoolName [] <- A [s]	\& [s] T [s]@@

# Agricultural and {Mechanical | Technical)
_SchoolName [] <- Agricultural [s] _xWHITE
	_xWILD [s one match = (and And \&)]_xWHITE
	_xWILD [s one match = (Mechanical Technical)] @@

# {Art | Science | Mining | Technology | Design }
_SchoolName []<-
	_xWILD [s one match =(Business Commerce Art Science Mining Technology  Design)] _xWHITE
	_xWILD [s one match = (and And \&)]_xWHITE
	_xWILD [s one match =(Business Commerce Art Science Mining Technology  Design)] @@

# Hobart and William Smith Colleges
_SchoolName [] <- Hobart [s]_xWHITE	
		_xWILD [s one match = (and And \&)]_xWHITE
	William  [s]_xWHITE Smith [s] @@

# Washington and Jefferson College
_SchoolName [] <- Washington  [s] _xWHITE 
		_xWILD [s one match = (and And \&)] _xWHITE
			Jefferson [s]@@

# William and Mary
_SchoolName [] <- William  [s] _xWHITE 
		_xWILD [s one match = (and And \&)] _xWHITE
			Mary [s]@@

#  Bryant & Stratton 
_SchoolName [] <- Bryant  [s] _xWHITE 
		_xWILD [s one match = (and And \&)] _xWHITE
			Stratton [s]@@
# Davis & Elkins College
_SchoolName [] <- Davis [s]_xWHITE 
		_xWILD [s one match = (and And \&)] _xWHITE
			Elkins [s] @@
# Emory & Henry College
_SchoolName [] <- Emory  [s] _xWHITE 
		_xWILD [s one match = (and And \&)] _xWHITE
			Henry  [s] @@
# Johnson & Wales
_SchoolName [] <- Johnson [s]_xWHITE 
		_xWILD [s one match = (and And \&)] _xWHITE
			Wales [s]@@
# Franklin & Marshall
_SchoolName [] <- Franklin [s] _xWHITE 
		_xWILD [s one match = (and And \&)] _xWHITE
			Marshall [s]@@
# Lewis & Clark College
_SchoolName [] <- Lewis [s]	_xWHITE 
		_xWILD [s one match = (and And \&)] _xWHITE
			Clark [s]@@
# Washington & Lee University
_SchoolName [] <- Washington [s]_xWHITE 
		_xWILD [s one match = (and And \&)] _xWHITE
			Lee [s]@@
# Cooper Union
_SchoolName [] <- Cooper [s] _xWHITE Union [s]@@