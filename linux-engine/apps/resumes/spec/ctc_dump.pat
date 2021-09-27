###############################################
# FILE: ctc_dump.pat
# SUBJ: Data dump for contact zone.
# AUTH: Amnon Meyers
# CREATED: 25/Dec/99 09:00:32
# MODIFIED:
###############################################

@CODE
prlit("ctc.txt", "\n   CONTACT ZONE LINES DUMP\n");
prlit("ctc.txt", "----------------------------------\n");

@@CODE

@PATH _ROOT _contactZone
# @INI
# Dump contact zone node's data once.
# xdump()
# @@INI

@POST
  ndump("ctc.txt",1);
  prlit("ctc.txt", "-------\n");
@RULES
_xNIL <- _LINE @@


