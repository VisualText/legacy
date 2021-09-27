###############################################
# FILE: pr_ctc.pat
# SUBJ: Print the contact zones themselves.
# AUTH: Amnon Meyers
# CREATED: 25/Dec/99 19:07:31
# MODIFIED:
###############################################

@NODES _ROOT

@POST
  prlit("ctc.txt", "CONTACT ZONE\n");
  prlit("ctc.txt", "------------\n");
  ndump("ctc.txt",1);
  prlit("ctc.txt", "\n");
@RULES
_xNIL <- _contactZone @@

