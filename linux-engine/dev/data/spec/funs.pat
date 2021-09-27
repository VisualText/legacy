###############################################
# FILE: funs.pat
# SUBJ: Miscellaneous functions.
# AUTH: AM
# CREATED: 26/Mar/03
# MODIFIED:
###############################################

@DECL
######
# FN:  PROSIFYSIMPLE
# SUBJ: Convert subtree to a prose-like string.
# CR:  03/26/03 AM.
# NOTE: Assuming all blanks are gone.
#	Simple one-level traverse of children.
#####

prosifysimple(L("root"))
{
if (!L("root"))
  return 0;
L("node") = pndown(L("root"));
if (!L("node"))
  return pnvar(L("root"),"$text");

# Traverse nodes, sticking in spaces.
L("noafter") = 0;
L("str") = pnvar(L("node"),"$text");
while (L("node") = pnnext(L("node")) )
  {
  # Need ispunct.
  L("txt") = pnvar(L("node"),"$text");
  if (L("txt") != "."
   && L("txt") != ","
   && L("txt") != "-"
   && L("txt") != "'"
   && !L("noafter")
   )
    L("str") = L("str") + " ";  # Add space BEFORE current word.
  if (L("txt") == "-"
   || L("txt") == "'")
    L("noafter") = 1;	# No space after, also.
  else
    L("noafter") = 0;
  L("str") = L("str") + pnvar(L("node"),"$text");
  }
return L("str");
}

######
# FN:	PROSIFY
# SUBJ: Convert subtree to a prose-like string.
# CR:	03/26/03 AM.
# NOTE: Assuming all blanks are gone.
#		A crude function.
# RET:	catenated string.
#		RECURSIVE.
#####

prosify(L("root"))
{
if (!L("root"))
  return 0;

# Global var to pass up and down in recursion.
# If spacing after current token.
G("prosify sp") = 0;

return prosifyrec(L("root"),0,1);
}

######
# FN:  PROSIFYREC
# SUBJ: Convert subtree to a prose-like string.
# CR:	05/01/03 AM.
# NOTE: Assuming all blanks are gone.
#		Recursive part of prosify.
# RET:	catenated string.
#####

prosifyrec(
	L("root"),
	L("str"),	# The glommed string so far.
	L("flag")	# Flag if root or not.
	)
{
if (!L("root"))
  return L("str");
L("nm") = pnname(L("root"));

# If literal vs nonliteral.
L("ch") = strpiece(L("nm"),0,0);
if (L("ch") == "."
 || L("ch") == ","
 )
  {
  L("str") = L("str") + L("nm");
  G("prosify sp") = 1;
  }
else if (L("ch") == "-"
 )
  {
  L("str") = L("str") + L("nm");
  G("prosify sp") = 0;
  }
else if (L("ch") != "_")  # Alpha, num, etc.
  {
  if (G("prosify sp"))
    L("str") = L("str") + " " + L("nm");
  else
    L("str") = L("str") + L("nm");
  G("prosify sp") = 1;
  }
else	# Nonliteral.
  {
  # Handle my subtree.
  L("str") = prosifyrec(pndown(L("root")),L("str"),0);
  }

if (pnprev(L("root")))
  return L("str");

# First in a list, handle the list.
if (L("flag"))
  return L("str");
while (L("root") = pnnext(L("root")))
  L("str") = prosifyrec(L("root"),L("str"),1);
return L("str");
}


@CODE
G("hello") = 0;
@@CODE
