###############################################
# FILE: nums1.pat
# SUBJ: Number phrases.
# AUTH: Amnon Meyers
# CREATED: 01/Nov/99 13:15:40
# MODIFIED:
# NOTE:	Because the ordinal rule is triggered, must be
#		tried before single token numbers.
#		(And I don't want to try the ordinal stuff on every
#		number in the world.  The idea is that other things will
#		eventually be added to a pass like nums1.)
###############################################

@NODES _LINE

@RULES

# 10/31/99 AM. Ordinal numbers. Overgeneralized poop!
_ordinal <- _xNUM [s] _xWILD [s one t match=(st nd rd th)] @@

