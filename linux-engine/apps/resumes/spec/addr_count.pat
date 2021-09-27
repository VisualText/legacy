###############################################
# FILE: addr_count.pat
# SUBJ: Count the number of addressParts in every line.
# CREATED: 23/Sep/99 12:16:18
# NOTE: Part of heuristics for finding contact information.
###############################################

@CODE
# Count the total number of cityStateZip matches.
# For use in determining best address block.
#var("cityStateZip", "0")
G("cityStateZip") = 0;

@@CODE

# Scour each line for all its addressParts and count them.
@MULTI _LINE

@POST
	++X("addressParts");
@RULES

_xNIL <- _addressPart @@

# Record instances of city,state,zip pattern. # 09/25/99AM
@POST
	++G("cityStateZip");
@RULES
_xNIL <- _cityStateZip @@

