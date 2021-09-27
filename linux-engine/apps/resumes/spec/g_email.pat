###############################################
# FILE: g_email.pat
# SUBJ: comment here
# CREATED: 29/Aug/99 21:50:18
###############################################

@NODES _LINE


# NOTE: Hand building some generalized email handling. # 08/29/99 AM.

# 06/07/00 AM.
@POST
	singler(3,5);
@RULES

_email <- _emailHeader [s]
	    _xWILD [s star match=(\  \t \n _whtSEP)]
	    _xWILD [s fails=(\  \t \n _whtSEP _emailHeader \@)]
          \@ [s trig]
          _xWILD [s fails=(\  \t \n _whtSEP)]
	    _xWILD [s star match=(\  \t \n _whtSEP)]
	@@

@POST
	singler(3,5);
@RULES

_email <- _emailHeader [s]
	    _xWILD [s star match=(_xWHITE _whtSEP)]
	    _xWILD [s fails=(_xWHITE _whtSEP _emailHeader \@)]
          \@ [s trig]
          _xWILD [s fails=(_xWHITE _whtSEP)]
	    _xWILD [s star match=(_xWHITE _whtSEP)]
	@@

# 06/07/00 AM. Rule just for debugging compiled runtime version of analyzer.
# (_xwhite in match list not implemented yet.)
@POST
	singler(2,4);
@RULES

_email <-
	    # Trying to make this match the interp rule below.	# 06/07/00 AM.
	    _xWILD [s star match=( \  \t \n _whtSEP _whtIndent)]
          _xWILD [s plus fails=( \  \t \n _whtSEP _whtIndent \, \[ \] _WebLinks)]
          \@ [s trigger]
          _xWILD [s plus fails=( \  \t \n _whtSEP \, \[ \] _Weblinks)]
	    _xWILD [s star match=( \  \t \n _whtSEP)]
	    @@

@POST
	singler(2,4);
@RULES

_email <-
	   #  _xWILD [s star match=(_xWHITE _whtSEP _whtIndent)]
          _xWILD [s plus fails=(_xWHITE _whtSEP _whtIndent \, \[ \] _WebLinks)]
          \@ [s trigger]
          _xWILD [s plus fails=(_xWHITE _whtSEP \, \[ \] _Weblinks)]
	    _xWILD [s star match=(_xWHITE _whtSEP)]
	    @@

