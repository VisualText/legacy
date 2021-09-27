###############################################

# FILE: grade0.pat

# SUBJ: comment here

# CREATED: 11/Oct/99 20:10:25

###############################################



@NODES _LINE



@RULES

_GPA <-
	Grade [s]
	_xWHITE [s star]
	Point [s]
	_xWHITE [s star]
	Average[s]
	@@

_GPA <- GPA [s] @@

_GPA <-
	G [s]
	\. [s opt]
	_xWHITE [s star]
	P [s]
	\. [s opt]
	_xWHITE [s star]
	A [s]
	@@


# Changing this to exploit NLP++.	# 12/20/99 AM.
@POST
  if ((num(N("integer")) >= 2 || num(N("integer")) <= 6)
	&& (num(N("decimal")) >= 0 && num(N("decimal")) <= 99))
    N("GPAValue") = "true";	# Good candidate for GPA.
  # noop()
@RULES
_xNIL <- _numDecimal @@


#@PRE

#<1,1>	numrange(3, 4)

#<3,3>	numrange(0, 99)

#@RULES 

#_GPAValue [] <- 

#	_xNUM 	[s]

#	\.		[s]

#	_xNUM 	[s] @@



