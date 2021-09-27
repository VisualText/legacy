###############################################
# FILE: try_humanName.pat
# SUBJ: Form-fit human names to gather data only!
# AUTH: Amnon Meyers
# CREATED: 29/Dec/99 17:39:32
# MODIFIED:
###############################################

@PATH _ROOT _contactZone _LINE _Caps

@CHECK
 if (
   !X("name found",2) && !G("humannames")	# No hi conf names found yet.
&& X("humanname conf") >= 50			# Caps is reasonable to try.
    )
    succeed();
 fail();
@POST
  # If fit this pattern, raise confidence a bunch.
  X("humanname conf") = X("humanname conf") %% 80;
#  noop()
@RULES
_xNIL <-
	_xSTART
	_xALPHA [s layer=(_firstName)]
	\. [s opt]
	_xWHITE [s star]
	_xALPHA [s layer=(_middleName)]
      \. [s]
	_xWHITE [s star]
	_xALPHA [s layer=(_lastName)]
	_xEND
	@@
@CHECK
 if (
   !X("name found",2) && !G("humannames")	# No hi conf names found yet.
&& X("humanname conf") >= 50			# Caps is reasonable to try.
    )
    succeed();
 fail();
@POST
  # If fit this pattern, raise confidence.
  X("humanname conf") = X("humanname conf") %% 65;
#  noop()
@RULES
_xNIL <-
	_xSTART
	_xALPHA [s layer=(_firstName)]
	_xWHITE [s star]
	_xALPHA [s layer=(_middleName)]
	_xWHITE [s star]
	_xALPHA [s layer=(_lastName)]
	_xEND
	@@

@CHECK
 if (
   !X("name found",2) && !G("humannames")	# No hi conf names found yet.
&& X("humanname conf") >= 50			# Caps is reasonable to try.
    )
    succeed();
 fail();
@POST
  # If fit this pattern, raise confidence.
  X("humanname conf") = X("humanname conf") %% 65;
#  noop()
@RULES
_xNIL <-
	_xSTART
	_xALPHA [s layer=(_firstName)]
	_xWHITE [s star]
	_xALPHA [s layer=(_lastName)]
	_xEND
	@@


