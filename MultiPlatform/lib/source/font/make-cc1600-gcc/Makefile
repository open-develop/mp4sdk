#*************************************************************************\
#  Copyright (c) 2007 by China Chip Tech.                                 *
#                                                                         *
#   PROJECT     : ccpmp                                                   *
#                                                                         *
#   MODULE      : MakeFile                                                *
#                                                                         *
#   PROCESSOR   : MIPS 4Kc (32 bit RISC) - 4730 board                     *
#                                                                         *
#   Tool-chain  : arm-linux-gcc                                           *
#                                                                         *
#   DESCRIPTION :                                                         *
#   Makefile used for building application.                               *
#                                                                         *
#   The default target (all) builds application in two formats :          *
#   *.a : The file is archives for ccpmp.                                 *
#                                                                         *
#   Other targets are :                                                   *
#   clean :    Deletes all files generated by makefile.                   *
#                                                                         *
#  History :                                                              *
#    Version      Date      Author     Memo                               *
#     1.0     2008-1-30      rainy    Created.                            *
#*************************************************************************/

TARGET    = font
CPP       = arm-linux-g++
CC        = arm-linux-gcc
MXU       = mxu_as

# *************************************************************************
# Directories
# *************************************************************************
ROOTDIR    = ..

FT2_ROOT       =  $(ROOTDIR)/freetype-2.3.8
FT2_INC_ROOT   =  $(FT2_ROOT)/include
FT2_SRC_ROOT   =  $(FT2_ROOT)/src
FT2_SRC        =  $(FT2_SRC_ROOT)/autofit \
                  $(FT2_SRC_ROOT)/base \
                  $(FT2_SRC_ROOT)/bdf \
                  $(FT2_SRC_ROOT)/cache \
                  $(FT2_SRC_ROOT)/cff \
                  $(FT2_SRC_ROOT)/cid \
                  $(FT2_SRC_ROOT)/gxvalid \
                  $(FT2_SRC_ROOT)/gzip \
                  $(FT2_SRC_ROOT)/lzw \
                  $(FT2_SRC_ROOT)/otvalid \
                  $(FT2_SRC_ROOT)/pcf \
                  $(FT2_SRC_ROOT)/pfr \
                  $(FT2_SRC_ROOT)/psaux \
                  $(FT2_SRC_ROOT)/pshinter \
                  $(FT2_SRC_ROOT)/psnames \
                  $(FT2_SRC_ROOT)/raster \
                  $(FT2_SRC_ROOT)/sfnt \
                  $(FT2_SRC_ROOT)/smooth \
                  $(FT2_SRC_ROOT)/tools \
                  $(FT2_SRC_ROOT)/truetype \
                  $(FT2_SRC_ROOT)/type1 \
                  $(FT2_SRC_ROOT)/type42 \
                  $(FT2_SRC_ROOT)/winfonts \

SRCDIR    = $(ROOTDIR) \
						$(FT2_SRC) \
						$(ROOTDIR)/Hzk16 \
						$(ROOTDIR)/libbmf \
						
INCDIR    =	../../../../inc \
						$(SRCDIR) \
						$(INC_ENV) \
						$(FT2_INC_ROOT)
						
VPATH     = $(SRCDIR)

# *************************************************************************
# Compiler and linker options
# *************************************************************************

# machine defined
DEFINE =	__X690HD \
					FT2_BUILD_LIBRARY \
					__MULTIPLATFORM_X690HD_GCC__ \
					FT_CONFIG_OPTION_NO_ASSEMBLER \
					
#debug setting
ifeq ("$(debug)", "enable")
DEFINE += __DEBUG_TRACE
endif

INCLUDE   = $(addprefix -I,$(INCDIR))
_DEFINE   = $(addprefix -D,$(DEFINE))

W_OPTS    = -fno-pic -pipe -O2 -Wall -finline-functions -fomit-frame-pointer -msoft-float \
-fno-builtin -mcpu=arm9 -fsigned-char
# -fno-builtin -mcpu=arm926ej-s -fsigned-char

CC_OPTS   = -c -g $(INCLUDE) $(W_OPTS) $(_DEFINE)

CPP_OPTS  =	-c -fno-exceptions -fno-rtti $(INCLUDE) $(W_OPTS) $(_DEFINE)

CC_OPTS_A = $(CC_OPTS)

LINK	=	arm-linux-g++

LFLAGS	=

LIBS	=	$(SUBLIBS) -lm -lz

TAR		=	tar -cf

GZIP	=	gzip -9f

STR		=	arm-linux-strip -g -x

AR		=	arm-linux-ar rus

# *************************************************************************
# Files to be compiled
# *************************************************************************

SRC_C    = ft2.c font.c font_hzk.c font_ascii.c font_nls.c font_cache.c ccbmf.c \
          autofit.c bdf.c cff.c ftbase.c ftbbox.c ftbdf.c ftbitmap.c ftcache.c \
          ftdebug.c ftgasp.c ftglyph.c ftgxval.c ftgzip.c ftinit.c ftlzw.c ftmm.c \
          ftotval.c ftpfr.c ftstroke.c ftsynth.c ftsystem.c fttype1.c ftwinfnt.c \
          ftxf86.c pcf.c pfr.c psaux.c pshinter.c psmodule.c raster.c sfnt.c \
          smooth.c truetype.c type1.c type1cid.c type42.c winfnt.c \
           
SRC_CPP  =
SRC_S    =
SRC     = $(SRC_C) $(SRC_CPP) $(SRC_S)

#OBJ_C   = $(patsubst %.c, %.o, $(SRC_C))

OBJ_C   = $(notdir $(patsubst %.c, %.o, $(SRC_C)))
OBJ_CPP = $(notdir $(patsubst %.cpp, %.o, $(SRC_CPP)))
OBJ_S   = $(notdir $(patsubst %.S, %.o, $(SRC_S)))

OBJ     = $(OBJ_C) $(OBJ_CPP) $(OBJ_S)

# *************************************************************************
# Image file names and map file
# *************************************************************************

IMAGE_LIB = $(TARGET).a

# *************************************************************************
# Rules
# *************************************************************************

.PHONY : all

all : $(IMAGE_LIB)

$(IMAGE_LIB) : $(OBJ) $(OBJ_MXU)
	$(AR) $(TARGET).a $(OBJ) $(OBJ_MXU)

$(OBJ_C) : %.o : %.c
	$(CC) $(CC_OPTS) -o $@ $<

$(OBJ_CPP) : %.o : %.cpp
	$(CPP) $(CPP_OPTS) -o $@ $<

$(OBJ_S) : %.o : %.S
	$(MXU) $< > $@.S
	$(CC) $(CC_OPTS_A) -o $@ $@.S

%.dc: %.c
	$(CC) -M $(CC_OPTS) $< > $@.tmp; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.tmp > $@; \
	rm -f $@.tmp

%.dcpp: %.c
	$(CC) -M $(CPP_OPTS) $< > $@.tmp; \
	sed 's,\($*\)\.o[ :]*,\1.o $@ : ,g' < $@.tmp > $@; \
	rm -f $@.tmp

.PHONY : clean depend

clean :
	rm -f $(IMAGE_LIB) $(OBJ) $(OBJ_MXU) $(MAP) *.S *.m *.dc *.dcpp

#sinclude $(OBJ_C:.o=.dc)
#sinclude $(OBJ_CPP:.o=.dcpp)

# *************************************************************************
#                              END  OF  FILE
# *************************************************************************

