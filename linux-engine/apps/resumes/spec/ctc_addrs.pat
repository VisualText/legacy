###############################################
# FILE: ctc_addrs.pat
# SUBJ: Accounting for line items in contact zone.
# AUTH: Amnon Meyers
# CREATED: 25/Dec/99 18:59:07
# MODIFIED:
###############################################

@PATH _ROOT _contactZone _LINE

@POST
  ++X("humannames");	# Count in line.
  ++X("humannames",2);	# Count in contact zone.
  ++G("humannames");	# Global count for contact zones.
@RULES
_xNIL <- _humanName @@

@POST
  ++X("naddressparts");   # Bookkeeping in the line.
  ++X("naddressparts",2); # Bookkeeping in the contact zone.

  # Track the first and last address lines found in contact zone.
  if (!X("first addressline",2))
	X("first addressline",2) = X("lineno");
  X("last addressline",2) = X("lineno");
@RULES
_xNIL <- _addressPart @@


