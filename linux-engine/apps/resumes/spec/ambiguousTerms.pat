###############################################
# FILE: ambiguousTerms.pat
# SUBJ: We have to handle these somehow
# AUTH: PCS
# CREATED: 18/Nov/99 14:32:13
# MODIFIED:
###############################################

@NODES _LINE

@RULES

# for State College, PA
_city[layer = (_SchoolRoot)] <-  
	State [s] _xWHITE [s] College [s] @@

_city [layer = (_country)]  <- Bermuda [s] @@
_city [layer = (_country)]  <- Djibouti [s] @@
_city [layer = (_country)]  <- Gibraltar [s] @@
_city [layer = (_country)]  <- Grenada [s] @@
_city [layer = (_country)]  <- Guam [s] @@
_city [layer = (_country)]  <- Guatamala [s] @@
_city [layer = (_country)]  <- Holland [s] @@
_city [layer = (_country)]  <- Lebanon [s] @@
_city [layer = (_country)]  <- Luxembourg [s] @@
_city [layer = (_country)]  <- Macau [s] @@
_city [layer = (_country)]  <- Mexico [s] @@
_city [layer = (_country)]  <- Monaco [s] @@
_city [layer = (_country)]  <- Palestine [s] @@
_city [layer = (_country)]  <- Panama [s] @@
_city [layer = (_country)]  <- Peru [s] @@
_city [layer = (_country)]  <- Singapore [s] @@
_city [layer = (_country)]  <- Vatican [s] _xWHITE [s] City [s] @@


# New York can be a city or a state
_city [layer = (_state)]  <- New [s] _xWHITE York [s] @@
_city [layer = (_state)]  <- N [s] \. [s] Y [s] \. [s] @@
_city [layer = (_state)]  <- NY [s] @@
_city []  <- NYC @@

# MD can be a degree or a state
_degreeInMajor [layer = (_state)]  <- MD [s] @@

# catch S.C. before it turns into south carolina
_degreeInMajor [] <- M [s] \. [s] S[s] \. [s]  C  [s] \.  [s] S [s] \. [s]  @@

# Masters or Massachusetts
_degree [layer = (_state) ] <- MA [s] @@
_degree [layer = (_state) ] <- AA [s] @@
_degree [layer = (_state) ] <- M [s] \. [s] A [s] \.[s] @@

# Ontario is both a state and a city
_city [layer = (_state)] <- Ontario [s] @@

# Some company names match hardware or software
_hardware [layer = (_company) ] <- IBM [s] @@
_hardware [layer = (_company) ] <- SUN [s] @@
_hardware [layer = (_company) ] <- DEC [s] @@
_hardware [layer = (_company) ] <- HP [s] @@
_hardware [layer = (_company) ] <- Intel [s] @@
_hardware [layer = (_company) ] <- Dell [s] @@
_hardware [layer = (_company) ] <- Compaq [s] @@
_hardware [layer = (_company) ] <- Sony [s] @@
_hardware [layer = (_company) ] <- NEC [s] @@
_hardware [layer = (_company) ] <- Fujitsu [s] @@

# this one is really ugly
_software [layer = (_company _degree _state) ] <- MS [s] @@

_poBoxNumber [layer = _addressLine ]<- 
	P [s] \. [s opt] O [s] \. [s opt] _xWHITE [star s] 
	Box [s] _xWHITE [star s] _xNUM [s] @@


