###############################################
# FILE: contact_name2.pat
# SUBJ: Additional search for contact names.
# CR:	09/18/99 AM.
# NOTE:	Will move this stuff into the contactZone only.
#	That is, weak patterns must have strong context.  And they should follow
#	stronger pattern searches.
###############################################

@PATH _ROOT _contactZone	# 10/19/99 AM.
#@NODES _contactZone		# 10/19/99 AM.

# 09/26/99 AM. Pattern for start line of resume.
@CHECK
 if (N("wcap",3) < 2) fail();
 if (N("wcap",3) > 4) fail();
 if (N("nblobs",3) > 4) fail();
 if (N("humanNameCandidate",3)) fail();
 if (N("addressParts",3)) fail();
	#Nge(3, "wcap", 2)	# >= 2 cap words on line
	#Nle(3, "wcap", 4) # <= 4 cap words on line
	#Nle(3, "nblobs", 4) # <= 4 blobs on line
	#Neq(3, "humanNameCandidate", 0)
	#Neq(3, "addressParts", 0)
@POST
	++N("humanNameCandidate",3);
	noop();
@RULES
_xNIL <- _xSTART
	   _xWILD [s star match=(_BLANKLINE _horizRule)]
	   _LINE	# No rename of line.	# 12/25/99 AM.
	   @@


# 09/26/99 AM. Constraining these heuristics.  I don't want these
# searches to find HEADER lines!  Will require TWO or more address
# lines below a name, or a short address line.

# 09/14/99 AM. Want to place lots of restrictions on such a line.
# Should consist of alphabetics primarily.
@CHECK
   if (N("nblobs",1) < 2) fail();
   if (N("nblobs",1) > 5) fail();
   if (N("wcap",1) < 2) fail();
   if (N("humanNameCandidate",1)) fail();
   if (N("addressParts",1)) fail();
   if (N("walpha",3) > 7) fail();
   #Nge(1, "nblobs", 2)		# >=2 "blobs" (ie nonwhite sequences).
   #Nle(1, "nblobs", 5)		# <=5 "blobs"
   #Nge(1, "wcap", 2)		# >=2 cap words on line.
   #Neq(1, "humanNameCandidate", 0)
   #Neq(1, "addressParts", 0)
   #Nle(3, "walpha", 7)		# address part must be relatively short.
#  notcontains(1, "_humanNameCandidate")  # one idea for not nesting.

@POST

   ++N("humanNameCandidate",1);
   noop(0);        # Don't reduce the phrase.

@RULES

# Want NO-CONTAIN(_addressPart) in the _LINE.  # 08/03/99 AM.
_xNIL <-
	_LINE		# No rename of line.	# 12/25/99 AM.
	_xWILD [s star match=(_BLANKLINE _horizRule)]
	_addressPart [tree plus]		# 08/03/99 AM.
	@@



# 09/26/99 AM.  This one requires TWO OR MORE address parts.
@CHECK
   if (N("nblobs",1) < 2) fail();
   if (N("nblobs",1) > 5) fail();
   if (N("wcap",1) < 2) fail();
   if (N("humanNameCandidate",1)) fail();
   if (N("addressParts",1)) fail();
   #Nge(1, "nblobs", 2)		# >=2 "blobs" (ie nonwhite sequences).
   #Nle(1, "nblobs", 5)		# <=5 "blobs"
   #Nge(1, "wcap", 2)		# >=2 cap words on line.
   #Neq(1, "humanNameCandidate", 0)
   #Neq(1, "addressParts", 0)
@POST
   ++N("humanNameCandidate",1);
   noop(0);        # Don't reduce the phrase.
@RULES
# Want NO-CONTAIN(_addressPart) in the _LINE.  # 08/03/99 AM.
_xNIL <-
	_LINE		# No rename of line.	# 12/25/99 AM.
	_xWILD [s star match=(_BLANKLINE _horizRule)]
	_addressPart [tree min=2 max=0]	# 2 or more.
	@@

# 09/26/99 AM. A sentinel pass that simply goes beyond the
# current address block.
@POST
   noop();
@RULES
_xNIL <- _addressPart [tree plus] @@

