###############################################
# FILE: xml_output.pat
# SUBJ: Start up XML output
# AUTH: Amnon Meyers & Phil Shinn
# CREATED: 20/Dec/99 15:48:18
# MODIFIED:
###############################################

@CODE
# G("outfile") = G("$inputfilename");	# Todo!
fileout("xml.txt")
prlit("xml.txt", "  <?xml version=\"1.0\" ?>\n")
prlit("xml.txt", "<BizTalk xmlns=\"urn:schemas-biztalk-org/biztalk-0.81.xml\">\n")
prlit("xml.txt", " <Body>\n")
prlit("xml.txt", "  <Resume xmlns=\"urn:schemas-biztalk-org:HR-XML-org/Resume\">\n")
prlit("xml.txt", "   <ResumeProlog>\n")
prlit("xml.txt", "   </ResumeProlog>\n")
prlit("xml.txt", "  <ResumeBody>\n")
#var("xml indent",2)  # How much indentation for xml lines.
G("xml indent") = 2;

@@CODE

@RULES
_xNIL <- _xNIL @@

