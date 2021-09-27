###############################################
# FILE: grade2.pat
# SUBJ: Extensions to GPA phrases.
# AUTH: Amnon Meyers
# CREATED: 02/Jan/00 00:29:11
# MODIFIED:
###############################################

@PATH _ROOT _LINE

@POST
  N("grade",1) = N("$text",10);
  listadd(1,10,"true");
@RULES
_xNIL <-
	_Grade	[s]
	\.		[s opt]
	_xWHITE	[s star]
	_xPUNCT	[s opt]
	_xWHITE	[s star]
	overall	[s]
	_xWHITE	[s star]
	_xWILD 	[s opt match= ( \: of was \= is )]
	_xWHITE	[s star]
	_numDecimal	[s layer=(_gradeValue)]
	@@

@POST
  N("major grade",1) = N("$text",12);
  listadd(1,12,"true");
@RULES
_xNIL <-
	_Grade	[s]
	\.		[s opt]
	_xWHITE	[s star]
	_xPUNCT	[s opt]
	_xWHITE	[s star]
	in		[s]
	_xWHITE	[s star]
	major		[s]
	_xWHITE	[s star]
	_xWILD 	[s opt match= ( \: of was \= is )]
	_xWHITE	[s star]
	_numDecimal	[s layer=(_majorGrade)]
	@@

