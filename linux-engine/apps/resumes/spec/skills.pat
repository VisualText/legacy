###############################################
# FILE: skills.pat
# SUBJ: Output the skills file.
# CREATED: 06/25/99 AM.
# NOTE:	Split from phrases.pat
###############################################

@CODE

fileout("skills.txt");
#varstrs("skills")

@@CODE

@NODES _LINE

@POST

addstrs("skills",1);
prrange("skills.txt",1,1);
prlit("skills.txt","\n");

@RULES

_xNIL <- _skill [s] @@

