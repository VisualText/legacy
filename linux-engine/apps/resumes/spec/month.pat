
# AUTOMATICALLY GENERATED! EDITS WILL BE LOST!
# FILE: d:\apps\Resume\spec\Month.pat
# TIME: Thu Sep 30 08:23:24 1999
@NODES _LINE

@PRE

<1,1>	cap()
@RULES

# Ex:	Jul
_Month [] <-
	_xWILD	[min=1 max=1 s match=(Jul Jan February Feb March Mar April Apr May June Jun July January August Aug September Sept Sep October Oct November Nov December Dec)]
	@@


@RULES

# Ex:	02
_Month [] <-
	_xWILD	[min=1 max=1 s match=(02 2 3 4 5 6 7 8 9 01 1 03 04 05 06 07 08 09 10 11 12)]
	@@


