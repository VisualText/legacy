# 

# FILE: grade1.pat

# TIME: Mon Oct 04 19:17:59 1999

#

@PATH _ROOT _LINE


# Adding some semantics here, etc.		# 12/20/99 AM.

# Seen this a few times even in Dev1.	# 01/01/00 AM.
# Cumulative GPA 4.7 on a weighted 4.0 scale.
# Cumulative GPA 4.01 on 4.0 scale.
@POST
  if (N("major gpa",1))
	S("major grade") = N("$text",6);
  else if (N("minor gpa",1))
	S("minor grade") = N("$text",6);
  else
	S("grade") = N("$text",6);
  S("max grade") = N("$text",14);
  S("school type") = N("school type",1);
  ++X("gpa");			# Flag that line has GPA.
  single();
@RULES
_Grade [base] <- 
	_GPA [s]
	\. [s opt]			# Took period out of abbrev.
	_xWHITE [s star]
	_xWILD 	[s opt match= ( \: of was \= is )]
	_xWHITE [s star]
	_numDecimal [s layer=(_gradeValue)]
	_xWHITE [s star]
	on [s]
	_xWHITE [s star]
	a [s opt]
	_xWHITE [s star]
	weighted [s opt]
	_xWHITE [s star]
	_numDecimal [s layer=(_maxGrade)]
	_xWHITE [s star]
	scale [s]
	@@

# 3.8 (4.0) Major GPA
# 3.8 (4.0) overall GPA
@POST
  if (N("major gpa",7))
	S("major grade") = N("$text",1);
  else if (N("minor gpa",7))
	S("minor grade") = N("$text",1);
  else
	S("grade") = N("$text",1);
  S("max grade") = N("$text",4);
  S("school type") = N("school type",7);
  ++X("gpa");			# Flag that line has GPA.
  single();
@RULES
_Grade [] <-
	_numDecimal [s layer=(_gradeValue)]
	_xWHITE	[star s]
	\( [s]
	_numDecimal [s layer=(_maxGrade)]
	\) [s]
	_xWHITE [s star]
	_GPA [s]
	@@

# Major G.P.A.: 3.5 Overall: 3.0
# Minor GPA: 3.1/4.0
# G.P.A. = 3.1; In Major = 3.4
# GPA: still awaiting final grades
# Computer Science Departmental GPA 4.17.
# Computer Science GPA: 3.12 / 4.00

# Heur: Watch out for GPA 4.0 vs NT 4.0!
# gpa computer
# (4.0, 5.0), PowerBuilder 3.0-5.0
# NT 3.51/4.0
# Other product versions...
# Heur: So many of these standalone ranges should be done in edu
# section only.

# 3.85 GPA (of 4.0)
@POST
  if (N("major gpa",3))
	S("major grade") = N("$text",1);
  else if (N("minor gpa",3))
	S("minor grade") = N("$text",1);
  else
	S("grade") = N("$text",1);
  S("max grade") = N("$text",9);
  S("school type") = N("school type",3);
  ++X("gpa");			# Flag that line has GPA.
  single();
@RULES
_Grade <-
	_numDecimal [s layer=(_gradeValue)]
	_xWHITE	[star s]
	_GPA [s]
	\. [s opt]
	_xWHITE [s star]
	\( [s]
	of [s opt]
	_xWHITE [s star]
	_numDecimal [s layer=(_maxGrade)]
	\) [s]
	@@

@POST
  if (N("major gpa",3))
	S("major grade") = N("$text",1);
  else if (N("minor gpa",3))
	S("minor grade") = N("$text",1);
  else
	S("grade") = N("$text",1);
  S("school type") = N("school type",3);
  ++X("gpa");			# Flag that line has GPA.
  single();

@RULES

# Ex:	3.85 GPA

_Grade <-
	_numDecimal [s layer=(_gradeValue)]

	_xWHITE	[star s]

	_GPA [s]

	@@


# GPA of 3.986 (4.0 in major)
@POST
  if (N("minor gpa",1))
	S("minor grade") = N("$text",6);
  else
	S("grade") = N("$text",6);
  S("major grade") = N("$text",9);
  S("school type") = N("school type",1);
  ++X("gpa");			# Flag that line has GPA.
  single();
@RULES

_Grade <-

	_GPA [s]
	\. [s opt]			# Took out of abbrev.

	_xWHITE	[s star]

	_xWILD 	[s opt match= ( \: of was \= is )]

	_xWHITE	[s star]

	_numDecimal [s layer=(_gradeValue)]
	_xWHITE [s star]
	\( [s]
	_numDecimal [s]
	_xWHITE [s star]
	in [s]
	_xWHITE [s star]
	major [s]
	\) [s]
	@@

# GPA: 3.68 / 4.0
@POST
  if (N("major gpa",1))
	S("major grade") = N("$text",6);
  else if (N("minor gpa",1))
	S("minor grade") = N("$text",6);
  else
	S("grade") = N("$text",6);
  S("max grade") = N("$text",10);
  S("school type") = N("school type",1);
  ++X("gpa");			# Flag that line has GPA.
  single();
@RULES
_Grade <-
	_GPA		[s]
	\. 		[s opt]			# Took out of abbrev.
	_xWHITE	[s star]
	_xWILD 	[s opt match= ( \: of was \= is )]
	_xWHITE	[s star]
	_numDecimal [s layer=(_gradeValue)]
	_xWHITE	[s star]
	\/		[s]
	_xWHITE	[s star]
	_numDecimal [s layer=(_maxGrade)]
	@@


# GPA: 3.68 (4.0 scale)
@POST
  if (N("major gpa",1))
	S("major grade") = N("$text",6);
  else if (N("minor gpa",1))
	S("minor grade") = N("$text",6);
  else
	S("grade") = N("$text",6);
  S("max grade") = N("$text",9);
  S("school type") = N("school type",1);
  ++X("gpa");			# Flag that line has GPA.
  single();
@RULES
_Grade <-
	_GPA		[s]
	\. 		[s opt]			# Took out of abbrev.
	_xWHITE	[s star]
	_xWILD 	[s opt match= ( \: of was \= is )]
	_xWHITE	[s star]
	_numDecimal [s layer=(_gradeValue)]
	_xWHITE	[s star]
	\(		[s]
	_numDecimal [s layer=(_maxGrade)]
	_xWHITE	[s star]
	scale		[s opt]
	\)		[s]
	@@


@POST
  if (N("major gpa",1))
	S("major grade") = N("$text",6);
  else if (N("minor gpa",1))
	S("minor grade") = N("$text",6);
  else
	S("grade") = N("$text",6);
  S("school type") = N("school type",1);
  ++X("gpa");			# Flag that line has GPA.
  single();
# Ex:	GPA of 3.6
# GPA: 3.6
# GPA 3.6
# G.P.A. in Major: 3.08
@RULES
_Grade <-
	_GPA [s]
	\. [s opt]			# Took out of abbrev.
	_xWHITE	[s star]
	_xWILD 	[s opt match= ( \: of was \= is )]
	_xWHITE	[s star]
	_numDecimal [s layer=(_gradeValue)]
	@@
