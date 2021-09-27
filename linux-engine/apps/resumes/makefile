#
OBJS = main.o Uanalyze.o u_out.o

# Note: Need an environment var to point to TEXTAI area.
NLPENG	= /home/textai/linux-engine
TEXTAI	= $(NLPENG)/dev
APP	= $(NLPENG)/apps/noop
ULIB	= $(NLPENG)/usrlib
TARG	= resumes.exe
#CC	= gcc
CC	= g++
LIBD	= $(TEXTAI)/lib
LIBS	= $(APP)/user/user.a $(LIBD)/lite.a $(LIBD)/libconsh.a $(LIBD)/libkbm.a \
	  $(LIBD)/libprim.a $(LIBD)/words.a $(APP)/lib/kb.a \
	  $(ULIB)/libiodbc.a $(ULIB)/libiodbcinst.a -ldl
#	  /usr/local/lib/libiodbc.a /usr/local/lib/libiodbcinst.a -ldl
#	  -ldl

CFLAGS	= -g -DLINUX -I$(TEXTAI)/include/Api -I/usr/local/include  -L$(LIBD)

%.o: %.cpp
	$(CC) $(CFLAGS) -c $< -o $@

all: $(TARG)
$(TARG): $(OBJS) $(LIBS)
	$(CC) $(CFLAGS) $(OBJS) $(LIBS) -o $@
		chmod 755 $(TARG)

clean:
	/bin/rm -f $(TARG) *.o

