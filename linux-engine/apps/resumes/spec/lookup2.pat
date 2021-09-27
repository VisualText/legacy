###############################################
# FILE: lookup2.pat
# SUBJ: Webco style lookup.
# AUTH: Amnon Meyers
# CREATED: 08/Dec/99 22:23:29
# MODIFIED:
###############################################

@CODE

exitpass();	# IGNORE THIS PASS!  # 09/02/01 AM.

prlit("dump.txt", "Before sort\n");
"dump.txt" << G("Words");
# fprintvar("dump.txt", "Words", " ");
prlit("dump.txt", "\n\n");

sortvals("Words");		# Sort alphabetically.
prlit("dump.txt", "After sort\n");
"dump.txt" << G("Words");
prlit("dump.txt", "\n\n");

gtolower("Words");
prlit("dump.txt", "Lowercased\n");
"dump.txt" << G("Words");
prlit("dump.txt", "\n\n");

guniq("Words");
prlit("dump.txt", "Uniqued\n");
"dump.txt" << G("Words");
prlit("dump.txt", "\n\n");

# Lookup words in dict file.
lookup("Words",		# The variable.
	"doom.words",	# The word file.
	"word");		# Bit-flag to update in symbol table entry.
@@CODE

#@PATH _ROOT _LINE

#@PRE
#<1,1> unknown()		# Reduce if alphabetic is not a plain English word.

#@RULES
# _UNK <- _xALPHA [s] @@

# Should always fail!
#_xNIL <- zzzzzzxxyyA @@




