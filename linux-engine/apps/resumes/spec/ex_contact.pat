################################################################################

# FILE: ex_contact.pat

# SUBJ: Outputs contact information

################################################################################



## CODE REGION



#@CODE



# 09/19/99 AM. Printing additional data (to help up the accuracy).
#prlit("output.txt", "Assigned Phones=")
#fprintvar("output.txt", "Assigned Phones")
#prlit("output.txt", "\n")

#prlit("output.txt", "Total Phones=")
#fprintvar("output.txt", "Total Phones")
#prlit("output.txt", "\n")
#prlit("output.txt", "\n")

#prlit("output.txt", "Total Names=")
#fprintvar("output.txt", "Total Names")
#prlit("output.txt", "\n\n")


#@@CODE


# 09/04/99 AM. Using CONTACT ZONE at start of resume to limit spurious
# fills for contact information.

# @NODES _addressBlock   # 09/04/99 AM.
@MULTI _contactZone      # 09/04/99 AM.

# Heur: Output name if there is only one in the contact zone.

# 01/04/00 AM. Commenting this out.  ex_ctc should be the only
# one for names.

# Heur: If multiple names, output name that is attached to
# "Resume of X" or similar phrase.	# 10/02/99 AM.
# @CHECK
#	Ggt("Total Names", 1)
#	Ngt(1, "ResumeOf", 0)
#@POST
#prxtree("output.txt", "Title:       ", 1, "_prefixName", "\n")
#prxtree("output.txt", "First Name:  ", 1, "_firstName",  "\n")
#prxtree("output.txt", "Middle Name: ", 1, "_middleName", "\n")
#prxtree("output.txt", "Last Name:   ", 1, "_lastName",   "\n")
#prxtree("output.txt", "Suffix Name: ", 1, "_suffixName", "\n")
#@RULES
#_xNIL <- _humanName @@  # 09/04/99 AM.

@POST
prxtree("output.txt", "PO Box:      ", 1, "_poBoxNumber",  "\n");
prxtree("output.txt", "Number:      ", 1, "_streetNumber", "\n");
prxtree("output.txt", "Direction:   ", 1, "_direction",    "\n");
prxtree("output.txt", "Street:      ", 1, "_streetName",   "\n");
prxtree("output.txt", "Road:        ", 1, "_road",         "\n");
prxtree("output.txt", "Unit:        ", 1, "_unit",         "\n");
prxtree("output.txt", "Room:        ", 1, "_room",         "\n");

@RULES

_xNIL <- _addressLine @@	# 09/04/99 AM.

@POST
prxtree("output.txt", "Unit:        ", 1, "_unit",         "\n");
prxtree("output.txt", "Room:        ", 1, "_room",         "\n");
@RULES
_xNIL <- _unitRoom @@	# 09/23/99 AM.

@POST
prlit("output.txt", "Home phone:  ");
prxtree("output.txt", "(+", 1, "_countryCode", ") ");	# 09/25/99 AM.
# Note: Empty string in rules file not handled.	# 09/25/99 AM.
#prxtree("output.txt", "", 1, "_areaCode", " ");
prtree("output.txt", 1, "_areaCode");
prlit("output.txt", " ");
prtree("output.txt", 1, "_prefix");
prlit("output.txt", " ");
prtree("output.txt", 1, "_suffix");
prlit("output.txt", "\n");

@RULES
_xNIL <- _phoneHomePhrase @@		# 09/04/99 AM.

# 09/19/99 AM. Heur: If no phones have been assigned but there's one
# phone number in contact zones, assume it is the home phone number.
@CHECK
 if (
    G("Assigned Phones") == 0
    && G("Total Phones") == 1
    )
    succeed();
 fail();
@POST
prlit("output.txt", "Home phone:  ");
#prlit("output.txt", "(+");
#prtree("output.txt", 1, "_countryCode");
#prlit("output.txt", ") ");
prxtree("output.txt", "(+", 1, "_countryCode", ") ");	# 09/25/99 AM.
prtree("output.txt", 1, "_areaCode");
prlit("output.txt", " ");
prtree("output.txt", 1, "_prefix");
prlit("output.txt", " ");
prtree("output.txt", 1, "_suffix");
prlit("output.txt", "\n");
@RULES
_xNIL <- _phoneNumber @@

@POST
prlit("output.txt", "Work phone:  ");
prxtree("output.txt", "(+", 1, "_countryCode", ") ");	# 09/25/99 AM.
prtree("output.txt", 1, "_areaCode");
prlit("output.txt", " ");
prtree("output.txt", 1, "_prefix");
prlit("output.txt", " ");
prtree("output.txt", 1, "_suffix");
prlit("output.txt", " ext ");
prtree("output.txt", 1, "_extension");
prlit("output.txt", "\n");

@RULES
_xNIL <- _phoneWorkPhrase @@ # 09/04/99 AM.

@POST
prlit("output.txt", "Fax phone:   ");
prtree("output.txt", 1, "_areaCode");
prlit("output.txt", " ");
prtree("output.txt", 1, "_prefix");
prlit("output.txt", " ");
prtree("output.txt", 1, "_suffix");
prlit("output.txt", "\n");

@RULES

_xNIL <- _phoneFaxPhrase @@

@POST
prlit("output.txt", "Home/Fax phone: ");
prtree("output.txt", 1, "_areaCode");
prlit("output.txt", " ");
prtree("output.txt", 1, "_prefix");
prlit("output.txt", " ");
prtree("output.txt", 1, "_suffix");
prlit("output.txt", "\n");
@RULES
_xNIL <- _phoneHomeFaxPhrase @@

@POST
prlit("output.txt", "Pager phone: ");
prtree("output.txt", 1, "_areaCode");
prlit("output.txt", " ");
prtree("output.txt", 1, "_prefix");
prlit("output.txt", " ");
prtree("output.txt", 1, "_suffix");
prlit("output.txt", "\n");
@RULES
_xNIL <- _phonePagerPhrase @@

@POST
prlit("output.txt", "Cell phone:  ");
prtree("output.txt", 1, "_areaCode");
prlit("output.txt", " ");
prtree("output.txt", 1, "_prefix");
prlit("output.txt", " ");
prtree("output.txt", 1, "_suffix");
prlit("output.txt", "\n");
@RULES
_xNIL <- _phoneCellPhrase @@

@POST
prxtree("output.txt", "City:         ", 1, "_cityName",  "\n");
prxtree("output.txt", "State:        ", 1, "_stateName", "\n");
# 09/04/99 AM. Part of Canadian demo.
prxtree("output.txt", "Province:     ", 1, "_province",  "\n");
prxtree("output.txt", "Zip:          ", 1, "_zipCode",   "\n");
prxtree("output.txt", "Zip suffix:   ", 1, "_zipSuffix", "\n");
prxtree("output.txt", "Country:      ", 1, "_country",   "\n");

@RULES

_xNIL <- _cityStateZip  @@  # 09/04/99 AM.

# Only use cityState if no cityStateZip around.
# (Should find the first, also.)
@CHECK
   if (G("cityStateZip")) fail();
@POST
prxtree("output.txt", "City:         ", 1, "_city",  "\n");
prxtree("output.txt", "State:        ", 1, "_state", "\n");
prxtree("output.txt", "State:        ", 1, "_country", "\n");
# 09/04/99 AM. Part of Canadian demo.
prxtree("output.txt", "Province:     ", 1, "_province",  "\n");
@RULES
_xNIL <- _cityState @@

@POST
prxtree("output.txt", "Email:           ", 1, "_email", "\n");

@RULES

_xNIL <- _email  @@   # 09/04/99 AM.

@POST
prxtree("output.txt", "URL:          ", 1, "_url", "\n");
@RULES

_xNIL <- _url  @@   # 09/04/99 AM.

