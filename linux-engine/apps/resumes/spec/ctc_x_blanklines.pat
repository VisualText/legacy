###############################################
# FILE: ctc_x_blanklines.pat
# SUBJ: Remove blanklines from CONTACT ZONE ONLY.
# AUTH: Amnon Meyers
# CREATED: 31/Oct/99 09:16:22
# MODIFIED:
# NOTE: As part of subzoning work. Each zone and subzone
#	will control if and when to remove blank lines.
#	01/01/00 AM. Not used for much, now that we're using cap phrases.
###############################################

@PATH _ROOT _contactZone

@POST

excise(1,1);

@RULES

_xNIL <- _BLANKLINE @@

