###############################################
# FILE: lists1.pat
# SUBJ: Layering.
# AUTH: Amnon Meyers
# CREATED: 01/Nov/99 23:16:39
# MODIFIED:
# NOTE: Separated from lists.pat because some items are ambiguous
# like _degree, _state <- MA
###############################################

@NODES _LINE

@RULES

_state <- _xWILD [s one match=( _statePhrase _PostalState )] @@

_country <- _xWILD [s one match=( _countryPhrase _countryWord )] @@

