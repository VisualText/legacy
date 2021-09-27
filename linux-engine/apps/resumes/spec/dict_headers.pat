###############################################
# FILE: dict_headers.pat
# SUBJ: Resume secion header words.
# CREATED: 06/25/99 AM.
# NOTE:	Split off from dictionary.pat
###############################################

@NODES _LINE

# Some phrases.  # 09/04/99 AM.
#@PRE
#<1,1> cap()
#<3,3> cap()
@CHECK
   if (X("nblobs") >= 5) fail();
   # Xlt("nblobs", 5)
@RULES
# 09/16/99 AM. Putting samples into Gram hierarchy.
# Should have a confidence bonus if the header covers the entire line.
#_contactHeader <- Personal [s] _xWHITE [s star] Information [s] @@
_contactHeader <-
    _xWILD [s one match=(_ContactHeaderPhrase _ContactHeaderWord)] @@

# 09/16/99 AM.
_educationHeader <-
    _xWILD [s one match=(_EducationHeaderPhrase _EducationHeaderWord)] @@

_experienceHeader <-
    _xWILD [s one match=(_ExperienceHeaderPhrase _ExperienceHeaderWord)] @@

_objectiveHeader <-
    _xWILD [s one match=(_ObjectiveHeaderPhrase _ObjectiveHeaderWord)] @@

_skillsHeader <-
    _xWILD [s one match=(_SkillsHeaderPhrase _SkillsHeaderWord)] @@

_referencesHeader <-
    _xWILD [s one match=(_ReferencesHeaderPhrase _ReferencesHeaderWord)] @@

_presentationsHeader <-
    _xWILD [s one match=(_PresentationsHeaderPhrase _PresentationsHeaderWord)] @@

_publicationsHeader <-
    _xWILD [s one match=(_PublicationsHeaderPhrase _PublicationsHeaderWord)] @@

_otherHeader <-
    _xWILD [s one match=(_OtherHeaderPhrase _OtherHeaderWord)] @@


# 09/27/99 AM. Another header starts a line with a colon.
# 09/30/99 AM. Making colon optional.
@PRE
<3,3>  cap();
@RULES
_contactHeader <-
	_xSTART
	_xWILD [s star match=( _xWHITE _whtINDENT)]
	_xWHITE [s star]
	_ContactHeaderWord       [s t]
	\: [s opt]
	@@
_objectiveHeader <-
	_xSTART
	_xWILD [s star match=( _xWHITE _whtINDENT)]
	_xWHITE [s star]
	_ObjectiveHeaderWord       [s t]
	\: [s opt]
	@@
_experienceHeader <-
	_xSTART
	_xWILD [s star match=( _xWHITE _whtINDENT)]
	_xWHITE [s star]
	_ExperienceHeaderWord       [s t]
	\: [s opt]
	@@
_educationHeader <-
	_xSTART
	_xWILD [s star match=( _xWHITE _whtINDENT)]
	_xWHITE [s star]
	_EducationHeaderWord       [s t]
	\: [s opt]
	@@
_skillsHeader <-
	_xSTART
	_xWILD [s star match=( _xWHITE _whtINDENT)]
	_xWHITE [s star]
	_SkillsHeaderWord       [s t]
	\: [s opt]
	@@
_referencesHeader <-
	_xSTART
	_xWILD [s star match=( _xWHITE _whtINDENT)]
	_xWHITE [s star]
	_ReferencesHeaderWord       [s t]
	\: [s opt]
	@@
_presentationsHeader <-
	_xSTART
	_xWILD [s star match=( _xWHITE _whtINDENT)]
	_xWHITE [s star]
	_PresentationsHeaderWord       [s t]
	\: [s opt]
	@@
_publicationsHeader <-
	_xSTART
	_xWILD [s star match=( _xWHITE _whtINDENT)]
	_xWHITE [s star]
	_PublicationsHeaderWord       [s t]
	\: [s opt]
	@@
_otherHeader <-
	_xSTART
	_xWILD [s star match=( _xWHITE _whtINDENT)]
	_xWHITE [s star]
	_OtherHeaderWord       [s t]
	\: [s opt]
	@@


#_educationWord <- Education @@
#_educationWord <- Schooling @@

#_experienceWord <- Experience @@
#_experienceWord <- Projects @@

#_otherHeaderWord <- _xWILD [s one matches=(

#Affiliations
#Certificate
#Certificates
# expertise    # Too specialized for the moment.
#General
#Information
#Objective
#Objectives
#Patents
#Presentations
#Publications
#References
#Skill
#Skills
# )] @@
