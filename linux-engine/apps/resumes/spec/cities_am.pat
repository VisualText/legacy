###############################################
# FILE: cities
# SUBJ: comment here
# CREATED: 08/Oct/99 09:58:43
###############################################

@NODES _LINE

@RULES

# Taking out the big list of cities.  # 10/22/99 AM.

_CityName <- _xWILD [s one match=( _cityPhrase _cityWord)] @@
