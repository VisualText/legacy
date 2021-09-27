###############################################
# FILE: dump_edu.pat
# SUBJ: comment here
# AUTH: Amnon Meyers
# CREATED: 01/Jan/00 23:19:03
# MODIFIED:
###############################################

@CODE
prlit("edu.txt", "DUMP EDUCATION INSTANCES\n");
prlit("edu.txt", "------------------------\n");
@@CODE

@PATH _ROOT _educationZone _educationInstance _LINE _educationPart

@POST
  ndump("edu.txt",1);
#  prlit("edu.txt","-------------\n");
  "edu.txt" << "--------------\n";
noop();
@RULES
_xNIL <- _Grade @@


