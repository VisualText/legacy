################################################################################
# FILE: clean.pat
# SUBJ: Cleanups for text file.
# CR:	01/21/99 AM.
################################################################################

@CODE
"output.txt" << "[" << today() << "]" << "\n";
@@CODE

@NODES _ROOT

@POST
   excise(1,1);
   excise(3,3);
   excise(5,5);
@RULES
_xNIL <- \r [optional] \n \r [min=0 max=1] \n
	_xWILD [min=0 max=0 match=(\r \n)]
	@@

@POST
   excise(1,1);
@RULES
_xNIL <- \r \n @@


