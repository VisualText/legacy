###############################################
# FILE: contact_zone.pat
# SUBJ: Contact information zone.
# CREATED: 04/Sep/99 16:07:50
# NOTE: First zone in resume will become contact zone.
#       Creating this so, eg, names and addresses in other zones
#       won't be used to fill contact information.
###############################################

# note: The funny looking stuff here matches all the zones but
# only reduces the FIRST zone found to a contactZone.  Just a trick
# for singling out the first item in a list.
# (may be working just because a single REZZONE is found in the list ;-)
# @NODES _ROOT
@PATH _ROOT

@POST
   singler(2,2);

@RULES

# note: I believe rules fail with wildcard at start or end of rule.
# 09/04/99 AM. BUG -- pattern matcher won't handle this.
# Will fix after Tuesday demo for PM.
#_contactZone <- _REZZONE _xWILD _xEND @@

# 09/04/99 AM. INTERIM WORKAROUND.
#_contactZone <- _xSTART _REZZONE _xWILD _xANY @@

# 09/17/99 AM.  Just see if very first zone is unmarked.
# 10/09/99 AM. DON'T SEAL.
_contactZone [unsealed] <- _xSTART _REZZONE @@

