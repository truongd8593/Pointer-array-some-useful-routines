#
# This Makefile was automatically generated by Code::Blocks IDE.
#

SRCS_f90d1 = \
mod_pt_array_utils.f90 \
mod_pt_array.f90 \
main.f90 

OBJS_f90d1 = \
mod_pt_array_utils.o \
mod_pt_array.o \
main.o 

SRC_DIR_f90d1 = 
OBJS_DIR = obj/Debug/
EXE_DIR = bin/Debug/

EXE = Pointer_array.exe
FC = gfortran
IDIR = 
CFLAGS = -w -std=gnu -g -fcheck=bounds  -J$(OBJS_DIR) $(IDIR)
LFLAGS = 
LIBS = 

VPATH = $(SRC_DIR_f90d1):$(OBJS_DIR)
OBJS = $(addprefix $(OBJS_DIR), $(OBJS_f90d1))

all : $(EXE)

$(EXE) : $(OBJS_f90d1)
	@mkdir -p $(EXE_DIR)
	$(FC) -o $(EXE_DIR)$(EXE) $(OBJS) $(LFLAGS) $(LIBS)

$(OBJS_f90d1):
	@mkdir -p $(OBJS_DIR)
	$(FC) $(CFLAGS) -c $(SRC_DIR_f90d1)$(@:.o=.f90) -o $(OBJS_DIR)$@

clean :
	rm -f $(OBJS_DIR)*.*
	rm -f $(EXE_DIR)$(EXE)

# Dependencies of files
mod_pt_array_utils.o: \
    mod_pt_array_utils.f90 \
    mod_pt_array.o
mod_pt_array.o: \
    mod_pt_array.f90
main.o: \
    main.f90 \
    mod_pt_array.o \
    mod_pt_array_utils.o

