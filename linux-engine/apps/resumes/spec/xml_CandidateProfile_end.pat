###############################################
# FILE: CandidateProfile
# SUBJ: outputs the candidate profile xml header
# AUTH: phil shinn
# CREATED: 22/Dec/99 15:28:40
# MODIFIED:
###############################################

@CODE

prlit("output.xml", "</CandidateProfile>\n");
prlit("output.xml", "</Body>\n");
prlit("output.xml", "</BizTalk>\n");
@@CODE

@RULES
_xNIL <- _xNIL @@