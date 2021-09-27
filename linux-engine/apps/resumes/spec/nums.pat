###############################################
# FILE: nums.pat
# SUBJ: Primitive numbers.
# CREATED: 08/10/99 AM.
###############################################

@NODES _LINE

#@PRE
#<1,1>	numrange(1950, 2010)
#@RULES

#_year <- _xNUM [s] @@


#@PRE
#<1,1>	numrange(50, 99)
#@RULES
#_year <- _xNUM [s] @@

#@RULES
#_year <- 00 [s] @@

# May as well block splitting of phone nums, etc. here.
# Could also decide and collect here, if desired.
@POST
  noop();	# Skip this construct.
@RULES
_xNIL <- _xNUM [s] \. _xNUM [s] \. _xNUM [s] @@

# Trying out float number collection.	# 12/20/99 AM.
@POST
  S("integer") = N("$text",1);
  S("decimal") = N("$text",3);
  singler(1,3);
@RULES
_numDecimal <- _xNUM [s] \. [s] _xNUM [s] @@

@RULES
_year <- _xWILD [one s match=(
	1950 1951 1952 1953 1954 1955 1956 1957 1958 1959
	1960 1961 1962 1963 1964 1965 1966 1967 1968 1969
	1970 1971 1972 1973 1974 1975 1976 1977 1978 1979
	1980 1981 1982 1983 1984 1985 1986 1987 1988 1989
	1990 1991 1992 1993 1994 1995 1996 1997 1998 1999
	2000 2001 2002 2003 2004 2005 2006 2007 2008 2009
	2010
	)]
	@@
_year <-
	\' [s opt]
	_xWILD [one s match=(
	50 51 52 53 54 55 56 57 58 59
	60 61 62 63 64 65 66 67 68 69
	70 71 72 73 74 75 76 77 78 79
	80 81 82 83 84 85 86 87 88 89
	90 91 92 93 94 95 96 97 98 99
	00
	01 02 03 04 05 06 07 08 09 10		# 12/08/99 AM.
	)]
	@@




