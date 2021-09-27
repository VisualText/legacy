###############################################
# FILE: fix_humanName.pat
# SUBJ: Fix human names that came from cap phrases.
# AUTH: Amnon Meyers
# CREATED: 18/Dec/99 02:18:30
# MODIFIED:
###############################################

@NODES _humanName

# Just some samples here.  These could be done by a RUG hierarchy!!

# If name is unlabeled, meaning first middle, last haven't been set.
@PRE
<2,2> lengthr(2,20)	# Title must be length > 1.
@CHECK
   if (!X("unlabeled")) fail();
@POST
   X("unlabeled") = 0;
   X("prefixName") = N("$text", 2);
   X("firstName") = N("$text", 5);
   X("middleName") = N("$text", 8);
   X("lastName") = N("$text", 11);
   X("suffixName") = N("$text", 14);
#  noop()
@RULES
# Dr. John A. Blipper [, Jr.]
_xNIL <-
	_xSTART
	_xALPHA [s layer=(_prefixName)]
	\. [s]
	_xWHITE [s star]
	_xALPHA [s layer=(_firstName)]
	\. [s opt]
	_xWHITE [s star]
	_xALPHA [s layer=(_middleName)]
      \. [s opt]
	_xWHITE [s star]
   	_xWILD [s one match=(_surName _xALPHA) layer=(_lastName)]
#	_xALPHA [s layer=(_lastName)]
	\, [s opt]
	_xWHITE [s star]
	_xALPHA [s opt layer=(_suffixName)]
	_xEND
	@@

@PRE
<2,2> lengthr(2,20)	# Title must be length > 1.
@CHECK
   if (!X("unlabeled")) fail();
@POST
   X("unlabeled") = 0;
   X("prefixName") = N("$text", 2);
   X("firstName") = N("$text", 5);
   X("lastName") = N("$text", 8);
   X("suffixName") = N("$text", 11);
#  noop()
@RULES
# Dr. John Blipper [, Jr.]
_xNIL <-
	_xSTART
	_xALPHA [s layer=(_prefixName)]
	\. [s]
	_xWHITE [s star]
	_xALPHA [s layer=(_firstName)]
	\. [s opt]
	_xWHITE [s star]
   	_xWILD [s one match=(_surName _xALPHA) layer=(_lastName)]
#	_xALPHA [s layer=(_lastName)]
	\, [s opt]
	_xWHITE [s star]
	_xALPHA [s opt layer=(_suffixName)]
	_xEND
	@@


@CHECK
   if (!X("unlabeled")) fail();
@POST
   X("unlabeled") = 0;
   X("firstName") = N("$text", 2);
   X("middleName") = N("$text", 5);
   X("lastName") = N("$text", 8);
   X("suffixName") = N("$text", 11);
#  noop()
@RULES
_xNIL <-
	_xSTART
	_xALPHA [s layer=(_firstName)]
	\. [s opt]
	_xWHITE [s star]
	_xALPHA [s layer=(_middleName)]
      \. [s opt]
	_xWHITE [s star]
   	_xWILD [s one match=(_surName _xALPHA) layer=(_lastName)]
#	_xALPHA [s layer=(_lastName)]
	\, [s opt]
	_xWHITE [s star]
	_xALPHA [s opt layer=(_suffixName)]
	_xEND
	@@

@CHECK
   if (!X("unlabeled")) fail();
@POST
   X("unlabeled") = 0;
   X("firstName") = N("$text", 2);
   X("lastName") = N("$text", 5);
   X("suffixName") = N("$text", 8);
#  noop();
@RULES
_xNIL <-
	_xSTART
	_xALPHA [s layer=(_firstName)]
	\. [s opt]
	_xWHITE [s star]
   	_xWILD [s one match=(_surName _xALPHA) layer=(_lastName)]
#	_xALPHA [s layer=(_lastName)]
	\, [s opt]
	_xWHITE [s star]
	_xALPHA [s opt layer=(_suffixName)]
	_xEND
	@@


