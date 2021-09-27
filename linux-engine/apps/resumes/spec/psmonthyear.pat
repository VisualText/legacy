###############################################
# FILE: psmonthyear.pat
# SUBJ: comment here
# CREATED: 22/Oct/99 12:51:32
###############################################

@NODES _LINE

@RULES
_date [] <- _monthNum [s] \/ [s one] _year [s one] @@
_date [] <- _monthNum [s] \- [s one] _year [s one] @@

@RULES

# Ex: July '90 
_date [] <- _monthWord		[s]
		\.			[s opt]
		\,			[s opt]
		_xWHITE		[s]
			_year 	[s]
			@@
# Ex: Summer '90 
_date [] <- _season		[s]
		\,			[s opt]
		_xWHITE		[s]
			_year 	[s]
			@@

_date [] <- _year @@
