###############################################
# FILE: group.pat
# SUBJ: Group phrases into zones
# CREATED: 12/Mar/99 09:11:19
###############################################

@NODES _LINE

@RULES

# 09/03/99 AM. The NEW names.
_dateBoundary <-
	_xWILD [s one matches=(_SingleDate _DateRange)] @@

# 09/03/99 AM. The OLD.
#_dateBoundary <- _xWILD [s one matches=(_date _dateRange)] @@
