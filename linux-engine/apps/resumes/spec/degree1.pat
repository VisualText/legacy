###############################################
# FILE: degree1.pat
# SUBJ: Degree Names & Types
# CREATED: 11/Oct/99 17:30:57
###############################################

@NODES _LINE

@RULES

# 12/15/99 AM.
_degree <-
	_xWILD [s one match=(Bachelor Master Bachelors Masters)]
	_xWHITE [s star]
	Degree [s]
	@@
_degree <-
	_xWILD [s one match=(Bachelor Master)]
      \'	[s]
	s	[s]
	_xWHITE [s star]
	Degree [s]
	@@

_degree <-
	_xWILD [s one match=(Bachelor Bachelors Master Masters)]
	_xWHITE [s star]
	of [s]
	_xWHITE [s star]
	_xWILD [s one match=(Art Arts Science Sciences)]
	@@
_degree <-
	_xWILD [s one match=(Bachelor  Master )]
      \'	[s]
	s	[s]
	_xWHITE [s star]
	of [s]
	_xWHITE [s star]
	_xWILD [s one match=(Art Arts Science Sciences)]
	@@

#_degree [] <- 	_xWILD [s t one match = ( graduate graduated )] 
#			_xWHITE [s opt]
#			_xWILD [s opt match = ( of from )] 
#			@@
_degree [] <- 
	_xWILD [s t one match = (Associate Bachelor Master )] 
      \'	[s]
	s	[s]
@@

_degree [] <- _xWILD [s one match = ( 
Associate 
Associates 
Bachelor 
Bachelors 
Masters 
Master 
Doctorate
diploma
certificate
senior
junior
sophmore
freshman
#certified
 )] @@


_degree [] <- 	_xWILD [s one match = ( A Advanced )]
			_xWHITE [s]
			_xWILD [s one match = ( Levels Level )] @@
		