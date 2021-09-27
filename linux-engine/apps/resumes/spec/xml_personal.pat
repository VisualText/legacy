###############################################
# FILE: xml_personal.pat
# SUBJ: XML output for PersonalData
# AUTH: Amnon Meyers
# CREATED: 20/Dec/99 16:08:42
# MODIFIED:
###############################################

@CODE
# Check indent level
# G("xml indent")....
prlit("xml.txt", "   <PersonalData>\n")
prlit("xml.txt", "   </PersonalData>\n")

@@CODE

# Code that gets executed AFTER rules have fired.
# @FIN
# prlit("xml.txt", "   - </PersonalData>\n")
# @@FIN

@NODES _ROOT _contactZone

@RULES

_xNIL <- _xNIL @@

