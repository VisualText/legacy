###############################################
# FILE: g_addr.pat
# SUBJ: Hand work for cityStateZip
# CREATED: 22/Oct/99 16:59:44
# NOTE: Tired of dealing with Gram hierarchy for this construct.
# here here - PS  Modified 13/Jan/2k to handle Australia n addrs
###############################################

@NODES _LINE

@PRE
#<8,8>	length(5);
<10,10>	length(4);
<13,13>	cap();
@RULES

# Ex:	Newt\_York,\_NY,\_23456-7890,\_USA
_cityStateZip <-
	_city	[s layer=(_cityName)]
	\,	[s opt]
	_xWHITE	[star s]
	_state	[one s layer=(_stateName)]
	\.	[s opt]
	\,	[s opt]
	_xWHITE	[star s]
	_xNUM	[s layer=(_zipCode)]
	\-	[s opt]
	_xNUM	[s opt layer=(_zipSuffix)]
	\,	[s opt]
	_xWHITE	[star s]
	_country	[s opt layer=(_country)]
	@@

@POST
  S("city") = N("$text",1);
  S("state") = N("$text",4);
  single();
@RULES
# Ex:	Newt\_York,\_NY,\_23456-7890,\_USA
_cityState <-
	_city	[s layer=(_cityName)]
	\,	[s opt]
	_xWHITE	[star s]
	_state	[one s layer=(_stateName)]
	@@


@PRE
<1,1>	cap();
<3,3>	cap();
#<10,10>	length(5);
<12,12>	length(4);
@POST
	group(1, 3, "_cityName");
	single();
@RULES

# Ex:	Newt\_York,\_NY,\_23456-7890,\_USA
_cityStateZip <-
	_xALPHA	[s opt]
	_xWHITE	[star s]
	_xALPHA	[s]
	\,	[s opt]
	_xWHITE	[star s]
	_state	[one trig s layer=(_stateName)]
	\.	[s opt]
	\,	[s opt]
	_xWHITE	[star s]
	_xNUM	[s layer=(_zipCode)]
	\-	[s opt]
	_xNUM	[s opt layer=(_zipSuffix)]
	\,	[s opt]
	_xWHITE	[star s]
	_country	[s opt layer=(_country)]
	@@
#@POST
#  S("city") = N("$text",1);
#  S("state") = N("$text",4);
#  single()
