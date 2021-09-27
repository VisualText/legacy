###############################################
# FILE: xml_experience.pat
# SUBJ: XML output for experience.
# AUTH: Amnon Meyers
# CREATED: 20/Dec/99 16:33:56
# MODIFIED:
###############################################

@CODE
# Check indent level
# G("xml indent")....
prlit("xml.txt", "   <ResumeSection SecType=\"Experience\">\n")
prlit("xml.txt", "    <SectionTitle>Experience</SectionTitle>\n")
prlit("xml.txt", "    <SecBody>\n")
prlit("xml.txt", "   </ResumeSection SecType=\"Experience\">\n")

@@CODE

# Code that gets executed AFTER rules have fired.
# @FIN
# prlit("xml.txt", "   - </PersonalData>\n")
# @@FIN

@NODES _ROOT _contactZone

@RULES

_xNIL <- _xNIL @@

