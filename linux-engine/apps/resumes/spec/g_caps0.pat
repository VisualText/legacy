###############################################
# FILE: g_caps0.pat
# SUBJ: Some caps retokenization and idioms.
# AUTH: Amnon Meyers
# CREATED: 21/Dec/99 17:37:19
# MODIFIED:1/11/2000 PS & AM
###############################################

@NODES _LINE

# No intervening whitespace.  "retokenization".
@POST
  S("len") = 2;
 S("puncts") = 1;	# 01/11/00 AM.
  single();
@RULES
_Caps [unsealed] <- _xCAP [s] _xWILD [s one match=( \- \/ )] _xCAP [s] @@

# Some special names.
# Ex, O'Henry.
@RULES
_surName [layer=(_humanNamepart _Caps)] <-
	O [s] 
	_xWILD [s one match=( \' \~ )]
	_xCAP [s] @@

# VARIOUS POSSESSIVES, etc.   John's, Peoples'.
@POST
  S("len") = 1;
  single();
@RULES
_Caps [unsealed] <- _xCAP [s] \' [s] _xALPHA [s opt] @@

# E.g., Southern California.
@POST
  S("len") = 2;
  S("state") = N("$text",3);
  single();
@RULES
_Caps [unsealed] <-
	_adjDirection [s] _xWHITE [s star] _state [s] @@

# Preempt caps formation for some stuff.
@POST
  S("city") = N("$text",1);
  S("state") = N("$text",4);
  single();
@RULES
_cityState <- _city [s] \, [s opt] _xWHITE [s star] _state [s] @@


# Take a look at some other city-state candidates.
#@PRE
#<1,1> unknown();
#<3,3> unknown();
@CHECK # 09/02/01 AM.
  if (spellword(N("$text",1)) || spellword(N("$text",3)))
     fail();
  
@POST
  S("state") = N("$text",6);
  group(1,3,"_city");
  S("city") = N("$text",1);	# group changes numbering.
  single();
@RULES
_cityState <-
	_xCAP [s]
 	_xWHITE [s star]
	_xCAP [s]
	\, [s]
	_xWHITE [s star]
	_state [s trig]
	@@

#@PRE
#<1,1> unknown();
@CHECK
  if (spellword(N("$text",1)))
     fail();
@POST
  S("state") = N("$text",4);
  S("city") = N("$text",1);
  single();
@RULES
_cityState <-
	_xCAP [s layer=(_city)]
	\, [s]
	_xWHITE [s star]
	_state [s trig]
	@@
