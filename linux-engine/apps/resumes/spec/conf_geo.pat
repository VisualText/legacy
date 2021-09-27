###############################################
# FILE: conf_geo.pat
# SUBJ: Confidence for geographic stuff.
# AUTH: Amnon Meyers
# CREATED: 23/Dec/99 23:00:23
# MODIFIED:
###############################################

@PATH _ROOT _LINE

# 01/11/00 AM. Not sure why this recalculation is being done here.
# So putting in the check.  If calc hasn't been done yet, do it.
@CHECK
	# !N("city conf");
	if (N("city conf"))
		fail();
@POST
# if (!N("len"))
#    print out no length.
# Treating confidences independently, but keep track of
# ambiguity in the phrase.

# Need NLP++ looping to add evidence three times, eg.

if (N("len") == 1)
   {
   ### ASSESS AS CITY NAME.
   if (N("cityMods"))
	N("city conf") = 0;	# Single word like "city".
   else if (N("unknowns"))
	N("city conf") = 50;	# Some single unknown word.
   else
	N("city conf") = 0;
   }
# Clear noncities.
else if	# Multi-word but noncity head word, etc..
	(N("end companyroot")
	|| N("end schoolroot")
	|| N("end field")
	|| N("end jobtitleroot"))
   {
   N("city conf") = 0;	# 01/03/00 AM.
   }
else		# If multi-word phrase.
   {
   ### ASSESS AS CITY NAME.
   if (N("end citymod"))
	N("city conf") = N("city conf") %% 90;
   if (N("start citymod"))
	N("city conf") = N("city conf") %% 80;
   if (N("citymods") - N("start citymod") - N("end citymod"))
	N("city conf") = N("city conf") %% 70;
   if (N("geos"))		# city,state, or country in here.
	N("city conf") = 95;

   if (N("unknowns") && (N("unknowns") <= 2))
	N("city conf") = N("city conf") %% (N("unknowns") * 30);
   if (N("fields"))
	N("city conf") = N("city conf") %%  -90; # Must be real sure.
   if (N("puncts"))
	N("city conf") = N("city conf") %% -90; # 01/11/00 AM.

   # Disallowing this if the caps is too long, etc.
   if (N("len") > 2 || N("capofcap") || N("capandcap"))
	N("city conf") = 0;
   }

# Update overall confidences for this phrase.

if (N("city conf") >= G("threshold"))
   ++N("ambigs");		# Another possible sense of cap phrase.
if (N("city conf") > N("hi conf"))	# New high.
   {
   N("hi conf") = N("city conf");
   N("hi class") = "city";	# Best so far.
   }

@RULES
_xNIL <- _Caps @@


