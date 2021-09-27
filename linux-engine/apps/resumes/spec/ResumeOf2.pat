###############################################
# FILE: ResumeOf2.pat
# SUBJ: Given strong "Resume Of" intro, find human name candidate.
# CREATED: 10/02/99 AM.
# NOTE:	This is strong knowledge, so occurs before zoning passes.
#		12/26/99 AM. Redoing all these handlers.
###############################################

@PATH _ROOT _LINE

# 01/04/00 AM. If there's a humanName already after resume of,
# flag that.
@CHECK
 if (
   (X("AfterResumeByItselfLine") || X("resumeOf"))
&& !X("Found cap already")
    )
    succeed();
 fail();
@POST
   N("name found") = 1;
   ++X("Found cap already");
   # noop()
@RULES
_xNIL <- _humanName [s] @@

# Take the first cap phrase on the line following "Resume of".
# Or on same line, if it's "Resume of X".
@CHECK
 if (
   (X("AfterResumeByItselfLine") || X("resumeOf"))
&& !X("Found cap already")
    )
    succeed();
 fail();
@POST
   N("unlabeled") = "true";
   N("name found") = 1;
   ++X("Found cap already");
   # noop()
@RULES
_xNIL <- _Caps [ren=( _humanName )] @@


