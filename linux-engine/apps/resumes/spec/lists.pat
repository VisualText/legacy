###############################################
# FILE: lists.pat
# SUBJ: For lists that aren't generated automatically yet.
# CREATED: 08/Aug/99 19:57:16
# NOTE: 10/22/99 AM. Using this to conjoin word and phrase
#       concepts, till RUG can merge passes similar to this file.
###############################################

@NODES _LINE

@RULES

_degree <- _xWILD [s one match=( _degreePhrase _degreeWord )] @@

_city <- _xWILD [s one match=( _cityPhrase _cityWord )] @@

