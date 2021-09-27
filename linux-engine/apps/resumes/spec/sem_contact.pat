###############################################
# FILE: sem_contact.pat
# SUBJ: Gather semantic information for contact zone.
# CREATED: 19/Sep/99 13:35:57
# NOTE: Will not output the information directly, but will gather it,
#       see what's there and what's missing, determine if further data
#       can be gotten by weaker methods.
###############################################

## CODE REGION
@CODE

# NOTE: Because the analyzer could potentially find multiple contact
# zones, gathering data globally.  (Could gather data in each
# contact zone node also, if beneficial.)

# Count the number of ASSIGNED phone numbers found in contact zones.
G("Assigned Phones") = 0;		# No assigned phones yet.

# Count the TOTAL number of phone numbers found in contact zones.
G("Total Phones") = 0;

# 10/02/99 AM.
# Count the total number of names found in contact zone.
G("Total Names") = 0;

@@CODE

# Look only in contact zones.
@MULTI _contactZone


@POST
	++G("Assigned Phones");

@RULES
_xNIL <- _xWILD [one match=(
	_phoneHomePhrase
	_phoneWorkPhrase
	_phoneFaxPhrase
	_phonePagerPhrase
	_phoneCellPhrase
	_phoneHomeFaxPhrase
	)] @@

@POST
	++G("Total Phones");
@RULES
_xNIL <- _phoneNumber @@

@POST
	++G("Total Names");
@RULES
_xNIL <- _humanName @@

