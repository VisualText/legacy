###############################################
# FILE: z_conf.pat
# SUBJ: % Confidence for capitalized phrases here.
# AUTH: Amnon Meyers
# CREATED: 15/Dec/99 12:04:05
# MODIFIED:
###############################################

#@CODE
# A global threshold for confidence in a category.
#var("threshold", 70)	# Minimum is 70%

#@@CODE

@PATH _ROOT _LINE

@POST
# if (!N("len"))
#    print out no length.
# Treating confidences independently, but keep track of
# ambiguity in the phrase.
N("hi conf") = 0;		# Track highest conf so far.
N("hi class") = "NULL";	# Track most confident classification.

# Track number of classes that have met the threshold.
N("ambigs") = 0;		# None yet.

if (N("len") == 1)
   {
   ### ASSESS AS HEADER.
   if (N("headerroots"))
	{
	N("header conf") = 90;
	if (N("$start") && N("$end"))	# Lone caps on line.
	   N("header conf") = N("header conf") %% 95;
	else if (N("$start"))
	   N("header conf") = N("header conf") %% 80;
	else if (N("$end"))
	   N("header conf") = N("header conf") %% 70;
	}

   ### ASSESS AS SCHOOL NAME.
   if (N("schoolnames"))
	{
      # Would like to get specific conf from each name.
      N("school conf") = 90;
	}
   else if (N("schoolroots"))
      N("school conf") = 0;  # eg, "College" is not standalone school.

   ### ASSESS AS A FIELD OF ENDEAVOR.
   if (N("fields"))
      {
	# Should get a list of standalone field names.
	N("field conf") = 75;
      }

   ### ASSESS AS COMPANY.
   if (N("companyphrase"))
	N("company conf") = 95;		# Standalone company name.
   else if (N("unknowns")  && N("allcaps"))
	N("company conf") = 60;
   else if (N("allcaps") || N("unknowns"))
	N("company conf") = 55;

   ### ASSESS AS JOB.
   if (N("jobtitleroots"))
	N("job conf") = 90;

   ### ASSESS AS CITY, GEO ITEM.
   if (N("geos"))
      N("geo conf") = 95;

   ### ASSESS AS HUMAN NAME.
   # N("humanname conf") = 0;
   }
else  # Multi-word cap phrase.
   {
   ### ASSESS AS HEADER.
   if (N("end headerroot"))
	N("header conf") = 90;
   else if (N("headerroots"))
	N("header conf") = 85;
   else if (N("end headermod"))
	N("header conf") = 80;
   else if (N("headermods"))
	N("header conf") = 75;

   if (N("header conf") > G("threshold"))
	{
	if (N("$start") && N("$end"))	# Lone caps on line.
	   N("header conf") = N("header conf") %% 95;
	else if (N("$start"))
	   N("header conf") = N("header conf") %% 80;
	else if (N("$end"))
	   N("header conf") = N("header conf") %% 70;
	}

   ### ASSESS AS SCHOOL NAME.
   if (N("end schoolroot"))	# eg, head is "university".
	N("school conf") = 95;
   else if (N("schoolroots") || N("schoolnames"))
	{
	N("school conf") = 95;
	if (N("unknowns"))
		N("school conf") = 97;
	}

   ### ASSESS AS A FIELD OF ENDEAVOR.
   if (N("fields"))
      {
	# Should get a list of standalone field names.
	if (N("end field"))
	   N("field conf") = 90;
	else if (N("fields") > 1)
	   N("field conf") = 75;
	else
	   N("field conf") = 70;
      }
   ### ASSESS AS COMPANY NAME.
   if (N("end companyroot"))
	N("company conf") = 95;
   else if (N("companyphrase"))
	N("company conf") = 90;
   else if (N("end companymodroot"))
	N("company conf") = 80;

   ### ASSESS AS CITY NAME.
   if (N("end citymod"))
	N("city conf") = 95;
   else if (N("start citymod"))
	N("city conf") = 75;
   else if (N("citymods"))
	N("city conf") = 70;
   if (N("puncts"))
	N("city conf") = 10;	# 01/11/00 AM.

   ### ASSESS AS GEO ENTITY. (city,state,country).
   if (N("geos"))
	N("geo conf") = 95;

   # Need a way to increase confidence based on counts of these.
   if (N("companyroots") || N("companymodroots") || N("companymods"))
	N("company conf") = N("company conf") %% 80;
   if (N("unknowns"))
	N("company conf") = N("company conf") %% 50;

   ### ASSESS AS JOB TITLE
   if (N("end jobtitleroot"))
	N("job conf") = 95;
   else if (N("end jobmod"))
	N("job conf") = 65;

   N("diff") = N("jobtitleroots") - N("end jobtitleroot");
   if (N("diff") > 0)
	N("job conf") = N("job conf") %% 80;

   N("diff") = N("jobmods") - N("end jobmod");
   if (N("caplen"))
   	N("diff") = N("diff") * 100 / N("caplen");
   N("job conf") = N("job conf") %% N("diff");

   if (N("unknowns"))
	N("job conf") = N("job conf") %% - 70;

   ### ASSESS AS HUMAN NAME.
   if (N("start humanname") && N("end humanname")) # John Xxx Smith.
	N("humanname conf") = 99;   # Got it, locally speaking.
   else if (N("humannames") == 2)
	N("humanname conf") = 95;
   else if (N("end humanname"))	# eg, "Xxxx Smith".
	N("humanname conf") = 90;
   else if (N("humannames") == 3)
      N("humanname conf") = 90;
   # Problem? Name Name Name Xxxx.
   else if (N("humannames") > 3)  # Could be a foreign or long name.
	N("humanname conf") = 80;
   else if (N("start humanname"))		# eg, "John Xxxx".
	N("humanname conf") = 80;
   else if (N("letters"))
	N("humanname conf") = 80;		# 01/04/00 AM.

   # Need a logarithm function to "perturb confidence"
   # eg, standalone for unknown word might be 70.
   # But when conf is already 80, want to increment it a bit.
   # (This is why Dave liked addemup better.)
   # 12/17/99 AM. Building %% operator in response to this need!

   # If unreduced unknown words in addition, add some conf.
   if (N("unknowns") > 1)
	N("humanname conf") = N("humanname conf") %% 70;
   else if (N("unknowns") == 1)
      N("humanname conf") = N("humanname conf") %% 60;

   # Some negative indicators.
   if (N("len") > 3)
      N("humanname conf") = N("humanname conf") %% -80;
   else
	N("humanname conf") = N("humanname conf") %% 20;

   if (N("len") > N("caplen"))	# Some uncapitalized words.
	N("humanname conf") = N("humanname conf") %% -80;
   else
	N("humanname conf") = N("humanname conf") %% 20;

   if (N("len") > (N("unknowns") + N("unreduced")))
	N("humanname conf") = N("humanname conf") %% -50;
   else
	N("humanname conf") = N("humanname conf") %% 20;
   }

# Update overall confidences for this phrase.

if (N("header conf") >= G("threshold"))
   ++N("ambigs");		# Another possible sense of cap phrase.
if (N("header conf") > N("hi conf"))	# New high.
   {
   N("hi conf") = N("header conf");
   N("hi class") = "header";	# Header is best so far.
   }

if (N("company conf") >= G("threshold"))
   ++N("ambigs");		# Another possible sense of cap phrase.
if (N("company conf") > N("hi conf"))	# New high.
   {
   N("hi conf") = N("company conf");
   N("hi class") = "company";	# Company is best so far.
   }

if (N("job conf") >= G("threshold"))
   ++N("ambigs");		# Another possible sense of cap phrase.
if (N("job conf") > N("hi conf"))	# New high.
   {
   N("hi conf") = N("job conf");
   N("hi class") = "job";	# Job title is best so far.
   }

if (N("humanname conf") >= G("threshold"))
   ++N("ambigs");
if (N("humanname conf") > N("hi conf"))
   {
   N("hi conf") = N("humanname conf");
   N("hi class") = "humanname";
   }

if (N("field conf") >= G("threshold"))
   ++N("ambigs");
if (N("field conf") > N("hi conf"))
   {
   N("hi conf") = N("field conf");
   N("hi class") = "field";
   }

if (N("school conf") >= G("threshold"))
   ++N("ambigs");
if (N("school conf") > N("hi conf"))
   {
   N("hi conf") = N("school conf");
   N("hi class") = "school";
   }

if (N("city conf") >= G("threshold"))
   ++N("ambigs");
if (N("city conf") > N("hi conf"))
   {
   N("hi conf") = N("city conf");
   N("hi class") = "city";
   }

if (N("geo conf") >= G("threshold"))
   ++N("ambigs");
if (N("geo conf") > N("hi conf"))
   {
   N("hi conf") = N("geo conf");
   N("hi class") = "geo";
   }

@RULES
_xNIL <- _Caps @@
