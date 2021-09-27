###############################################
# FILE: z_choose1.pat
# SUBJ: Select and reduce good candidates.
# AUTH: Amnon Meyers
# CREATED: 18/Dec/99 01:50:25
# MODIFIED:
###############################################

@PATH _ROOT _LINE

@PRE
<1,1>debug();
@CHECK
 if (
   (N("hi class") == "header")
&& (N("hi conf")  >= G("threshold"))
    )
    succeed();
 fail();
@POST
   noop();
@RULES
_xNIL <- _Caps [ren=( _header )] @@

@CHECK
 if (
   (N("hi class") == "humanname")
&& (N("hi conf")  >= G("threshold"))
    )
    succeed();
 fail();
@POST
   N("unlabeled") = "true";
   # noop()
@RULES
_xNIL <- _Caps [ren=( _humanName )] @@

@CHECK
 if (
   (N("hi class") == "city")
&& (N("hi conf") >= 80)
    )
    succeed();
 fail();
@POST
   noop();
@RULES
_xNIL <- _Caps [ren=( _city )] @@
