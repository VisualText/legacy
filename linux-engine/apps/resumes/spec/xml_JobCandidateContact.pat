################################################################################
# FILE: ex_contact.pat
# SUBJ: Outputs contact information
################################################################################
@CODE

prlit("output.xml", "<JobCandidateContact>\n");

@@CODE

@MULTI _contactZone      # 09/04/99 AM.

@POST
prxtree("output.xml", "Title:       ", 1, "_prefixName", "\n");
prxtree("output.xml", "<Name>\n<First>", 1, "_firstName",  "</First>\n");
prxtree("output.xml", "Middle Name: ", 1, "_middleName", "\n");
prxtree("output.xml", "<Last>", 1, "_lastName",   "</Last>\n</Name>\n");
prxtree("output.xml", "Suffix Name: ", 1, "_suffixName", "\n");
@RULES
_xNIL <- _humanName @@ 

@POST
prxtree("output.xml", "<Email>", 1, "_email", "</Email>\n");

@RULES
_xNIL <- _email  @@ 

@POST
prxtree("output.xml", "<Website>", 1, "_url", "</Website>\n");

@RULES
_xNIL <- _url  @@ 

@POST

prlit("output.xml", "<Address>\n");
prlit("output.xml", "<AddressLine>\n");
prxtree("output.xml", "PO Box ", 1, "_poBoxNumber",  " ");
prxtree("output.xml", " ", 1, "_streetNumber", " ");
prxtree("output.xml", " ", 1, "_direction",    " ");
prxtree("output.xml", " ", 1, "_streetName",   " ");
prxtree("output.xml", " ", 1, "_road",         " ");
prxtree("output.xml", " ", 1, "_unit",         " ");
prxtree("output.xml", " ", 1, "_room",         " ");
prlit("output.xml", "\n</AddressLine>\n");
prlit("output.xml", "</Address>\n");

@RULES

_xNIL <- _addressLine @@

@POST
prlit("output.xml", "<Address>\n");
prlit("output.xml", "<AddressLine>\n");
prxtree("output.xml", " ", 1, "_unit",         " ");
prxtree("output.xml", " ", 1, "_room",         " ");
prlit("output.xml", "\n</AddressLine>\n");
prlit("output.xml", "\n</Address>\n");
@RULES
_xNIL <- _unitRoom @@

@POST
prlit("output.xml", "<Address>\n");
prxtree("output.xml", "<City> ", 1, "_cityName",  " </City>\n");
prxtree("output.xml", "<State> ", 1, "_stateName", " </State>\n");
prxtree("output.xml", "<Province> ", 1, "_province",  " </Province>\n");
prxtree("output.xml", "<PostalCode> ", 1, "_zipCode",   " </PostalCode>\n");
prxtree("output.xml", " ", 1, "_zipSuffix", "\n");
prxtree("output.xml", "<Country>", 1, "_country",   " </Country>\n");
prlit("output.xml", "</Address>\n");

@RULES

_xNIL <- _cityStateZip  @@ 

@CHECK
   if (G("cityStateZip")) fail();
@POST
prlit("output.xml", "<Address>\n");
prxtree("output.xml", "<City> ", 1, "_cityName",  " </City>\n");
prxtree("output.xml", "<State> ", 1, "_stateName", " </State>\n");
prxtree("output.xml", "<Province> ", 1, "_province",  "</Province>\n");
prlit("output.xml", "</Address>\n");

@RULES
_xNIL <- _cityState @@

# This XML schema distinguishes three types of phone numbers:
# Voice, Fax and Pager.  Here's the voice
@POST
prlit("output.xml", "<PhoneNumbers>");
prlit("output.xml", "\n<Voice>");
prxtree("output.xml", "\n<IntlCode> ", 1, "_countryCode", " </IntlCode>");
prxtree("output.xml", "\n<AreaCode> ", 1, "_areaCode", " </AreaCode>");
prlit("output.xml", "\n<TelNumber> ");
prtree("output.xml", 1, "_prefix");
prtree("output.xml", 1, "_suffix");
prlit("output.xml", " </TelNumber>");
prlit("output.xml", "\n</Voice>");
prlit("output.xml", "\n</PhoneNumbers>\n");

@RULES
#_xNIL <- _phoneNumber @@
_xNIL <- 	_xWILD [one matches=( _phoneNumber 
_phoneHomePhrase _phoneWorkPhrase _phoneCellPhrase)]@@

# Here's the fax
@POST
prlit("output.xml", "<PhoneNumbers>");
prlit("output.xml", "\n<Fax>");
prxtree("output.xml", "\n<IntlCode> ", 1, "_countryCode", " </IntlCode>");
prxtree("output.xml", "\n<AreaCode> ", 1, "_areaCode", " </AreaCode>");
prlit("output.xml", "\n<TelNumber> ");
prtree("output.xml", 1, "_prefix");
prtree("output.xml", 1, "_suffix");
prlit("output.xml", " </TelNumber>");
prlit("output.xml", "\n</Fax>");
prlit("output.xml", "\n</PhoneNumbers>\n");

@RULES
#_xNIL <- _phoneNumber @@
_xNIL <- 	_xWILD [one matches=( 
	_phoneHomeFaxPhrase 
	_phoneFaxPhrase)]@@

# pager phone number
@POST
prlit("output.xml", "<PhoneNumbers>");
prlit("output.xml", "\n<Pager>");
prxtree("output.xml", "\n<IntlCode> ", 1, "_countryCode", " </IntlCode>");
prxtree("output.xml", "\n<AreaCode> ", 1, "_areaCode", " </AreaCode>");
prlit("output.xml", "\n<TelNumber> ");
prtree("output.xml", 1, "_prefix");
prtree("output.xml", 1, "_suffix");
prlit("output.xml", " </TelNumber>");
prlit("output.xml", "\n</Pager>");
prlit("output.xml", "\n</PhoneNumbers>\n");

@RULES
_xNIL <- 	_xWILD [one matches=( _phonePagerPhrase )]@@

