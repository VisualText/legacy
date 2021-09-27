###############################################
# FILE:     BIGTOK.PAT (pass 0)
# SUBJ:     Automatically generated RFA file.
# AUTH:     VisualText
# CREATED:  Fri Nov 05 21:37:45 1999
# MODIFIED: 
# NOTE:     
###############################################

# NOTE: String and comment collection must be done together.				# 08/20/00 AM.
# NOTE:	Strings must be collected in a pass following collection of \".		# 08/20/00 AM.
@POST
	excise(1, 3)
@RULES
_xNIL <- \# _xWILD \n @@

@POST
	excise(1, 2)
@RULES
_xNIL <- \# _xWILD _xEOF @@

@POST
	rfastr(2)
	single()
@RULES
_STR [base] <- \" _xWILD _xWILD [one match=( \" \n )] @@	# 07/12/06 AM.


# Moved x_commas here.  (May want to get rid of this in the future.)
# 02/16/00 AM. Will use commas in function call lists.
#@POST
#	excise(1, 1)
#@RULES
#_xNIL <- \, [plus] @@

# EXPRESSION GRAMMAR STUFF.	# 11/06/99 AM.
@POST
	rfaop(1,2)
	single()
@RULES
_opAND <- \& \& @@
_opOR  <- \| \| @@
_opINC <- \+ \+ @@
_opDEC <- \- \- @@
_opEQ  <- \= \= @@
_opNEQ <- \! \= @@
_opGE  <- \> \= @@
_opLE  <- \< \= @@
_opCONF <- \% \% @@		# 12/17/99 AM.
_opOUT <- \< \< @@		# 12/31/99 AM.

# MOVED COMPONENTS HERE.

@RULES
_ENDRULE [base] <- \@ \@ _xWHITE @@

#@POST
#	noop()
#@RULES
#_xNIL <- _xWILD [min=1 max=1 fail=(\@)] @@

@RULES
_ENDRULE [base] <- \@ \@ _xEOF @@
_eoPOST [base layer=(_endMark)] <- \@ \@ POST [t] @@
_eoCHECK [base layer=(_endMark)] <- \@ \@ CHECK [t] @@
_eoPRE [base layer=(_endMark)] <- \@ \@ PRE [t] @@
_eoRULES [base layer=(_endMark)] <- \@ \@ RULES [t] @@
_eoRECURSE [base layer=(_endMark)] <- \@ \@ RECURSE [t] @@
_eoSELECT [base layer=(_endMark)] <- \@ \@ SELECT [t] @@
_eoNODES [base layer=(_endMark)] <- \@ \@ NODES [t] @@
_eoMULTI [base layer=(_endMark)] <- \@ \@ MULTI [t] @@
_eoPATH [base layer=(_endMark)] <- \@ \@ PATH [t] @@
_eoCODE [base layer=(_endMark)] <- \@ \@ CODE [t] @@
_eoDECL [base layer=(_endMark)] <- \@ \@ DECL [t] @@		# 12/19/01 AM.
# _soRULES [base layer=(_startMark)] <- \@ RULES [t] @@		# 08/31/00 AM.
_soPOST [base layer=(_startMark)] <- \@ POST [t] @@
_soCHECK [base layer=(_startMark)] <- \@ CHECK [t] @@
_soPRE [base layer=(_startMark)] <- \@ PRE [t] @@
_soNODES [base layer=(_startMark)] <- \@ NODES [t] @@
_soMULTI [base layer=(_startMark)] <- \@ MULTI [t] @@
_soPATH [base layer=(_startMark)] <- \@ PATH [t] @@
_soCODE [base layer=(_startMark)] <- \@ CODE [t] @@
_soDECL [base layer=(_startMark)] <- \@ DECL [t] @@
_soSELECT [base layer=(_startMark)] <- \@ SELECT [t] @@
_soRECURSE [base layer=(_startMark)] <- \@ RECURSE [t] @@

# Separating out rule mark so it can be counted.
# If there are none, then don't need to warn about no rules in pass.	# 08/31/00 AM.
@POST
  rfarulemark()
  single()
@RULES
_soRULES [base layer=(_startMark)] <- \@ RULES [t] @@

@POST
	rfanonlit(2)
	single()
@RULES
_NONLIT [base] <- \_ _xALPHA @@

@RULES
_ARROW [base] <- \< \- @@

@POST
	rfaname(1)
	single()
@RULES
# Not setting base for these potential keywords.	# 11/06/99 AM.
_LIT <- _xWILD [s one match=(
	N X G P s
	L			# LOCAL VARS FOR USER-DEFINED FNS.	# 03/09/02 AM.
	if else while return
	)] @@		# 11/06/99 AM.


_LIT [base] <- _xALPHA @@

# ADDING FLOAT TO GRAMMAR.  # 08/19/01 AM.
@POST
    rfafloat(1,3)
	single()
@RULES
_FLOAT <- _xNUM \. _xNUM @@

@POST
	rfanum(1)
	single()
@RULES
_NUM [base] <- _xNUM @@

