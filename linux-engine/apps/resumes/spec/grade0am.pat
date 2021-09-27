###############################################
# FILE: grade0am.pat
# SUBJ: Chatty GPAs!
# AUTH: Amnon Meyers
# CREATED: 01/Jan/00 21:20:31
# MODIFIED:
###############################################

@PATH _ROOT _LINE

@POST
# Want to make elt 3 optional and say:
# if (ispresent(elt 3))
  N("school type") = "undergraduate";
  listadd(5,1,"true");
@RULES
_xNIL <-
	_xWILD [s one match=(overall cumulative)]
	_xWHITE [s star]
	undergraduate [s]
	_xWHITE [s star]
	_GPA [s]
	@@

@POST
  listadd(3,1,"true");
@RULES
_xNIL <-
	_xWILD [s one match=(overall cumulative)]
	_xWHITE [s star]
	_GPA [s]
	@@


@POST
  N("major gpa",3) = 1;		# GPA for academic major.
  listadd(3,1,"true");
@RULES
_xNIL <-
	_xWILD [s one match=(major departmental)]
	_xWHITE [s star]
	_GPA [s]
	@@

# GPA in major
@POST
  N("major gpa",1) = 1;		# GPA for academic major.
  listadd(1,6,"true");
@RULES
_xNIL <-
	_GPA		[s]
	\.		[s opt]
	_xWHITE	[s star]
	in		[s]
	_xWHITE	[s star]
	major		[s]
	@@



@POST
  N("minor gpa",3) = 1;		# GPA for academic minor.
  listadd(3,1,"true");
@RULES
_xNIL <-
	minor [s]
	_xWHITE [s star]
	_GPA [s]
	@@
