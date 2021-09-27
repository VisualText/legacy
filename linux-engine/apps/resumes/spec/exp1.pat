###############################################
# FILE: exp1.pat
# SUBJ: Experience zone stuff.
# AUTH: Amnon Meyers
# CREATED: 16/Nov/99 15:59:15
# MODIFIED:
# ALGO:	(For experience zone.)
#	Select an anchor.  eg, date range.
#	First, number lines in the zone.
#	Then, "bound" zones half way between anchors!
#	Then SEGMENT the zones (can always undo later!)
#	Look at candidate job titles on same line, before and after.
#	Choose the best one based on its confidence and its distance
#	from the anchor.
#	Need to use this stuff for SUBZONING the experience zone also.
#	Basically, will mark the best candidates, then segment
#	accordingly.
#	Hmm, need to define the boundary to be searched then search.
#	There's also this clash between anchors.
# NOTE:	12/22/99 AM. Reworking to use confidence.
###############################################

# Traverse caps in experience instance, assigning conf. as
# job title, company name.
# Compute a score for each capitalized phrase based on its
# absolute confidence plus factor based on distance from anchor.
# Retain the maximum with the experience instance. 
@PATH _ROOT _experienceZone _experienceInstance _LINE

@POST
# Convert schools in the education zone to companies, ie,
# places of employment.
if (N("hi class") == "school")
   {
   N("hi class") = "company";
   N("company conf") = N("school conf");
   }

# If cap is on same line as anchor, add a bonus.
# NEED TO GET ANCHOR LINE NO. FROM INSTANCE.
N("diff") = 0;	# Initialize temp variable!
if (X("anchor lineno",3) == X("lineno"))
   {
   N("prox penalty") = 0;

   # PENALTY BECOMES A BONUS FOR WORTHY GUYS.
   if (N("job conf") >= G("threshold"))
	N("job conf") = N("job conf") %% 85;
   if (N("company conf") >= G("threshold"))
	N("company conf") = N("company conf") %% 85;
   }
# Reduce confidence with greater distance.
# Need absolute value here.
# Need += here!
# Need to iterate here.
else if (X("anchor lineno",3) >= X("lineno"))
	N("diff") = X("anchor lineno",3) - X("lineno");
else	# if <=
	N("diff") = X("lineno") - X("anchor lineno",3);
N("print1") = N("diff");
N("diff") = N("diff") * 25;
N("printy") = N("diff");
if (N("diff") > 100)
   N("diff") = 99;
N("prox penalty") = N("prox penalty") %% N("diff");

# Additional penalty for ambiguity.
if (N("ambigs"))
   N("prox penalty") = N("prox penalty") %% ((N("ambigs") - 1) * 20);

# Compute total confidences.
N("job conf tot") = N("job conf",1) %% -N("prox penalty");
N("company conf tot") = N("company conf") %% -N("prox penalty");

# Now find the maximum for each experience instance.
# (Note: no good way to initialize context vars yet, till
# NLP++ modified to have code regions with @PATH.)
if (N("job conf tot",1) > N("company conf tot",1)
    && N("job conf tot",1) > X("job conf hi",3))
   X("job conf hi",3) = N("job conf tot",1);
else if (N("company conf tot",1) > X("company conf hi",3))
   X("company conf hi",3) = N("company conf tot",1);
#noop()

@RULES
_xNIL <- _Caps @@
