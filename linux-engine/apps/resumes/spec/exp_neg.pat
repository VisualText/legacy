###############################################
# FILE: exp_neg.pat
# SUBJ: Negative indicators for experience zone parts.
# AUTH: Amnon Meyers
# CREATED: 03/Jan/00 17:05:03
# MODIFIED:
###############################################

@PATH _ROOT _experienceZone _experienceInstance _LINE

# skip single-char alphabetics, as they can be bullets!
@PRE
<1,1> length(1)
@RULES
_xNIL <- _xALPHA [s] @@

# Want all kinds of English stuff here.
# Make caps in English prose invisible.
# More generally, should characterize texty lines with lots of
# lowercase words, verbs, etc.
@PRE
 <1,1> lowercase()
@POST
  N("hi conf",3) = 0;
  N("hi class",3) = 0;
  setbase(3,"true");
  noop();
@RULES
_xNIL <-
	_xALPHA [s except=(and of)]
	_xWHITE [s star]
	_Caps [s rename=(_CHAFF)]
	@@