###############################################
# FILE: group.pat
# SUBJ: Group phrases into zones
# CREATED: 12/Mar/99 09:11:19
# NOTE:	01/01/99 AM. Not used for anything.  May want to
#		move this earlier in contact zone handling.
###############################################

# 09/18/99 AM. Only looking for candidate's name in a contact zone.
# @NODES _REZZONE
@PATH _ROOT _contactZone	# 10/19/99 AM.
# @NODES _contactZone		# 10/19/99 AM.

# DON'T SEAL?
@RULES

# 09/18/99 AM. Trying something a little looser here.
_addressBlock <-
	_addressPart [tree]
	_xWILD [tree star match=(_addressPart _BLANKLINE _horizRule)]
	@@

# 09/04/99 AM. Really want a line that CONTAINS address part.
# So using TREE instead of SINGLET.
_addressBlock <- _addressPart [tree min=1 max=10] @@

# 06/24/99 AM. Dave didn't use this.  Doesn't work,
# because it doesn't account for things like comma separators.
# Would be good to have a rule type that lets a phrase repeat.
# eg,  _edBlock <- _edPart { \, _edPart } [] @@
# Also, it crosses line boundaries, which we would want to do with
# some care.  Could grab a bunch of schools into one.
# Form I - Handle education info on one line -- good enough for now!

#_educationBlock <- _educationPart [s min=1 max=10] @@
