###############################################
# FILE: rez_boundaries.pat
# SUBJ: Find zone headers
# CREATED: 12/Mar/99 15:43:33
###############################################

@PATH _ROOT

@POST
	noop();
@RULES
# 10/04/99 AM. Skip early parts of resume.
# 01/04/00 AM. Put some limits on the length of this.
_xNIL <- _xSTART
	_xWILD [s min=0 max=25 match=(_BLANKLINE _horizRule)]
	_xANY
	@@

@RULES

# 09/04/99 AM. Handling "contact" zone if explicit.
_contactBoundary <-
      _BLANKLINE [s star]
	_horizRule [s opt]
	_BLANKLINE [s star]
      _xWILD [tree one matches=(_contactHeader) trigger]
	_BLANKLINE [s star]
	_horizRule [s opt]
      _BLANKLINE [s star]
	@@

# 08/06/99 AM. Modifying this a bit.
_educationBoundary <-
      _BLANKLINE [s star]
	_horizRule [s opt]
	_BLANKLINE [s star]
      _xWILD [tree one matches=(_educationHeader) trigger]
	_BLANKLINE [s star]
	_horizRule [s opt]
      _BLANKLINE [s star]
	@@

# This one finds the word or phrase alone on a line.
# But now I'm accepting it if it's one of very few words on a line,
# so this rule is unneeded. 08/06/99 AM.
# _educationBoundary <-
#     \n [opt s]
#     _xBLANK [star s]
#     _xWILD [s one matches=(_educationWord _educationPhrase)]
#     _xBLANK [star s]
#     \n [opt s]
#     @@

_experienceBoundary <-
      _BLANKLINE [s star]
	_horizRule [s opt]
	_BLANKLINE [s star]
      _xWILD [tree one matches=(_experienceHeader) trigger]
	_BLANKLINE [s star]
	_horizRule [s opt]
      _BLANKLINE [s star]
	@@

# _experienceBoundary <-
#     \n [opt s]
#     _xBLANK [star s]
#     _xWILD [s one matches=(_experienceWord _experiencePhrase)]
#     _xBLANK [star s]
#     \n [opt s]
#     @@

_objectiveBoundary <-
      _BLANKLINE [s star]
	_horizRule [s opt]
	_BLANKLINE [s star]
      _xWILD [tree one matches=(_objectiveHeader) trig]
	_BLANKLINE [s star]
	_horizRule [s opt]
      _BLANKLINE [s star]
	@@

_presentationsBoundary <-
      _BLANKLINE [s star]
	_horizRule [s opt]
	_BLANKLINE [s star]
      _xWILD [tree one matches=(_presentationsHeader) trig]
	_BLANKLINE [s star]
	_horizRule [s opt]
      _BLANKLINE [s star]
	@@

_publicationsBoundary <-
      _BLANKLINE [s star]
	_horizRule [s opt]
	_BLANKLINE [s star]
      _xWILD [tree one matches=(_publicationsHeader) trig]
	_BLANKLINE [s star]
	_horizRule [s opt]
      _BLANKLINE [s star]
	@@

_skillsBoundary <-
      _BLANKLINE [s star]
	_horizRule [s opt]
	_BLANKLINE [s star]
      _xWILD [tree one matches=(_skillsHeader) trig]
	_BLANKLINE [s star]
	_horizRule [s opt]
      _BLANKLINE [s star]
	@@

_referencesBoundary <-
      _BLANKLINE [s star]
	_horizRule [s opt]
	_BLANKLINE [s star]
      _xWILD [tree one matches=(_referencesHeader) trig]
	_BLANKLINE [s star]
	_horizRule [s opt]
      _BLANKLINE [s star]
	@@






_otherBoundary <-
      _BLANKLINE [s star]
	_horizRule [s opt]
	_BLANKLINE [s star]
      _xWILD [tree one matches=(_otherHeader) trig]
      _BLANKLINE [s star]
	_horizRule [s opt]
      _BLANKLINE [s star]
	@@

# _otherBoundary <-
#     \n [opt s]
#     _xBLANK [star s]
#     _xWILD [s one matches=(_otherWord _otherHeaderPhrase)]
#     _xBLANK [star s]
#     \n [opt s]
#     @@

# Finding headers based on having blank lines around.
# Should check first word capitalized.
#@CHECK
#	Nlt(4, "nblobs", 5)
#	Neq(4, "addressParts", 0)
#@RULES
#_otherBoundary <-
#      _BLANKLINE [s star]
#	_horizRule [s opt]
#	_BLANKLINE [s plus]
#	_xWILD [s one fails=(_horizRule _BLANKLINE) trig]
#	_BLANKLINE [s plus]
#	_horizRule [s opt]
#      _BLANKLINE [s star]
#	@@

# Let a horiz line be an empty section.
# 09/18/99 AM.  Don't know about this.
#@RULES
#_otherBoundary <-
#      _BLANKLINE [s star]
#      _horizRule [s]
#      _BLANKLINE [s star]
#      @@


