###############################################
# FILE: addrpart2.pat
# SUBJ: comment here
# CREATED: 20/Sep/99 12:42:32
###############################################

# Convert any unassigned phone numbers to address parts.
@NODES _LINE

@RULES

_addressPart <- _phoneNumber @@
_addressPart <- _cityStateZip @@
_addressPart <- _addressLine @@

@POST
  S("city") = N("city");
  S("state") = N("state");
  single();
@RULES
_addressPart <- _cityState @@


