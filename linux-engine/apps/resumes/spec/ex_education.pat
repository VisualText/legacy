#################################################################################
# FILE: ex_education
# SUBJ: Output data from education zone of the input resume.
#################################################################################

@CODE 
prlit("output.txt","\n") 
prlit("output.txt","EDUCATION:\n\n") 
@@CODE 

#@MULTI _educationZone		# 11/16/99 AM.
@MULTI _educationInstance	# 11/16/99 AM.
 
@POST 
prlit("output.txt","School Name: ") 
prtree("output.txt",1,"_CompleteSchoolName") 
prlit("output.txt","\n") 
@RULES  
_xNIL <- _CompleteSchoolName @@ 

@POST 
prlit("output.txt","School Location: ") 
prtree("output.txt",1,"_SchoolLocation") 
prlit("output.txt","\n") 
@RULES  
_xNIL <- _SchoolLocation @@ 

@POST 
prlit("output.txt","Degree Major: ") 
prtree("output.txt",1,"_degreeInMajor") 
prlit("output.txt","\n") 
@RULES  
_xNIL <- _degreeInMajor @@ 

@POST 
prlit("output.txt","Major: ") 
prtree("output.txt",1,"_RealMajor") 
prlit("output.txt","\n") 
@RULES 
_xNIL <- _RealMajor @@ 

@POST 
prlit("output.txt","Minor: ") 
prtree("output.txt",1,"_minor") 
prlit("output.txt","\n") 
@RULES 
_xNIL <- _minor @@ 

@POST 
prlit("output.txt","Year Graduated: ") 
prtree("output.txt",1,"_SingleDate") 
prlit("output.txt","\n") 
@RULES 
_xNIL <- _SingleDate @@ 

@POST 
prlit("output.txt","Attended: ") 
prtree("output.txt",1,"_DateRange") 
prlit("output.txt","\n") 
@RULES 
_xNIL <- _DateRange @@ 

@POST 
prlit("output.txt","GPA: ") 
prtree("output.txt",1,"_gradeValue") 
prlit("output.txt","\n") 
prlit("output.txt","\n") 
@RULES
_xNIL <- _Grade @@ 

