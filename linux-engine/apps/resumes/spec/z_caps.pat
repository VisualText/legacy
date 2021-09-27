###############################################
# FILE: z_caps.pat
# SUBJ: Characterize cap phrases.
# AUTH: Amnon Meyers
# CREATED: 14/Dec/99 23:51:10
# MODIFIED:
# NOTE:	"z" will stand for "characterize".
#		These are PURE cap phrases, ie only caps, no
#		punctuation or anything. (Except maybe space-less,
#		like "Co-develop").
###############################################

@CODE
  prlit("zdump.txt", "Unreduced unknown words in Caps\n");
  prlit("zdump.txt", "-------------------------------\n");
@@CODE

@PATH _ROOT _LINE _Caps

# Preceding passes should look for some capitalized phrase types:
# In general, look for head word at the end, as main thing.
# People names.
# Areas of study, endeavor.
# School designator.
# Company.
# Job title.
# Geo location.
# (May need a pass for each of these!)

# This pass does some general characterizations.

# Single Letters.  An important category. # 01/04/00 AM.
@PRE
<1,1> length(1)
@POST
  ++X("caplen");
  ++X("letters");
  ++X("unreduced");  # Not really, but keeps subsequent accounting ok.
@RULES
_xNIL <- _xCAP @@

# UNREDUCED UNKNOWN WORDS.	# 12/11/99 AM.
#@PRE
#<1,1> unknown()
@CHECK  # 09/02/01 AM.
   if (spellword(N("$text",1)))
      fail();
@POST
  ++X("caplen");
  ++X("unknowns");
  if (N("$allcaps"))
	++X("allcaps");		# 01/10/00 AM.
  N("txt",1) = N("$text", 1);   # Workaround to print text!
  #fprintnvar("zdump.txt", "txt", 1)
  "zdump.txt" << N("txt",1);
  prlit("zdump.txt", "\n");
@RULES
_xNIL <- _xCAP @@

# UNREDUCED KNOWN WORDS.	# 12/15/99 AM.
@POST
  ++X("caplen");
  ++X("unreduced");
  if (N("$allcaps"))
	++X("allcaps");		# 01/10/00 AM.
@RULES
_xNIL <- _xCAP @@

# REDUCED WORDS. ("Known" either from dict lookup or from
# being reduced in the resume analyzer grammar.)
@POST
  ++X("caplen");
  if (N("$allcaps"))
	++X("allcaps");		# 01/10/00 AM.
  # noop()	# Implicit.
@RULES
_xNIL <- _xCAP [s] @@

