###############################################
# FILE: caps3.pat
# SUBJ: Compute confidences for cap phrases.
# AUTH: Amnon Meyers
# CREATED: 18/Nov/99 15:41:40
# MODIFIED:
###############################################

# Look only at cap phrases within lines within experience zones.
@PATH _ROOT _experienceZone _LINE

@POST
  N("job conf",1) =
	N("len",1)
	+ N("caplen",1)
	+ N("jobtitleroots",1) * 3
	+ N("end jobtitleroot",1) * 10
	;
  N("company conf",1) =
	N("len",1)
	+ N("caplen",1)
	+ N("unknowns",1) * 10			# 12/09/99 AM.			
	+ N("companyroots",1) * 8
	+ N("companymods",1) * 10		# 12/07/99 AM.
	+ N("companymodroots",1) * 10		# 12/07/99 AM.
	+ N("end companymodroot",1) * 16	# 12/07/99 AM.
	+ N("end companyroot",1) * 20
	;

# If no appropriate words, reduce confidence.
if (!N("jobtitleroots",1) || N("unknowns",1))
  N("job conf",1) = N("job conf",1) - 15;
if (!N("companyroots",1)
	&& !N("companymodroots",1)
	&& !N("companymods",1)
	&& !N("unknowns",1)			# 12/09/99 AM.
	)
  N("company conf",1) = N("company conf",1) - 30;

# If a single word like "LTD", forget it.
if (N("len",1) == 1)	# Single-word company name.
   {
   if (N("companyroots",1) || N("companymods",1)
       || N("companymodroots",1) )
     N("company conf",1) = -99;
   else if (!N("unknown",1))	# Some known word.
	N("company conf",1) = 0;	# Threshold if on anchor line.
   }

  # noop()	# Implicit.
@RULES
_xNIL <- _Caps [s] @@

