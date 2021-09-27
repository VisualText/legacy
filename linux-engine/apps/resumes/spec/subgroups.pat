###############################################
# FILE: subgroups.pat
# SUBJ: Experience and education subgroups
# CREATED: 23/Mar/99 15:13:58
###############################################

@NODES _LINE

#@CHECK
# 06/25/99 AM. The OR action seems to be buggy.  At least it's
# being applied to a non optional here, which it shouldn't be....
#	or(1,3)	# 06/24/99 AM. Require info beyond the date.

# 06/24/99 AM. The OR check above doesn't guarantee that anything
# useful is present.  Should have a check here that says one of the
# wildcards ought to have some real education or experience stuff.
# Also, should treat education and experience separately.

@POST

# 06/24/99 AM. Changed from singler(1,2)  -- yuck!
single()

@RULES

# 06/24/99 AM. Assumes education and experience forms are all on
# one line. Reasonable for many education zones, but not for
# experience.
# If date is last in a line, this fails.
# If date is not first, then this misses some information on the line.
# 06/24/99 AM. Commenting out Dave's original version.
# _dateGroup <-
#      _dateBoundary [s]
#      _xWILD [s plus fails=(_dateBoundary)]
#      @@

# 06/24/99 AM. This handles more.
_dateGroup <-
      _xWILD [s star fails=(_dateBoundary)]
      _dateBoundary [s trig]
      _xWILD [s star fails=(_dateBoundary)]
      @@



