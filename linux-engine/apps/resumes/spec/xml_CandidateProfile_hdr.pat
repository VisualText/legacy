###############################################
# FILE: CandidateProfile
# SUBJ: outputs the candidate profile xml header
# AUTH: phil shinn
# CREATED: 22/Dec/99 15:28:40
# MODIFIED:
###############################################

@CODE
fileout("output.xml");
prlit("output.xml", "<?xml version=\"1.0\" ?>\n");
prlit("output.xml", "<BizTalk xmlns=\"urn:schemas-biztalk-org/biztalk-0.81.xml\">\n");
prlit("output.xml", "<Body>\n");
prlit("output.xml", "<CandidateProfile xmlns=\"urn:schemas-biztalk-org:HR-XML-org/CandidateProfile\">\n");
@@CODE

# @POST		# 11/22/00 AM.
#N("xmlfile") = G("$inputhead");
#N("xmlfile") = N("xmlfile")+ ".xml";
#fprintnvar("output.xml","xmlfile",1);
#@@POST

# @RULES	# 11/22/00 AM.

# _xNIL <- _xNIL @@	# 11/22/00 AM.
