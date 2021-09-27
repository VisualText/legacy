###############################################
# FILE: xml_qual.pat
# SUBJ: xml output. Qualifications.
# AUTH: Amnon Meyers
# CREATED: 20/Dec/99 16:18:10
# MODIFIED:
###############################################

@CODE
# Check indent level
# G("xml indent")....
prlit("xml.txt", "   <ResumeSection SecType=\"QualifSummary\">\n")
prlit("xml.txt", "   </ResumeSection SecType=\"QualifSummary\">\n")

@@CODE

# Code that gets executed AFTER rules have fired.
# @FIN
# prlit("xml.txt", "   - </PersonalData>\n")
# @@FIN

@NODES _ROOT _contactZone

@RULES

_xNIL <- _xNIL @@


