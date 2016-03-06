#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-coptercontrol_master.mk)" "nbproject/Makefile-local-coptercontrol_master.mk"
include nbproject/Makefile-local-coptercontrol_master.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=coptercontrol_master
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FW_18F2550_master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/FW_18F2550_master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/master/main.c ../src/master/usb_descriptors.c ../src/master/adc.c ../src/master/inc/src/usb_device.c ../src/master/inc/src/usb_device_hid.c ../src/master/system.c ../src/master/app_master.c ../../../../_ELECTRONIC/inc/pwm_r.c ../../../../_ELECTRONIC/inc/spi_r.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/120498020/main.p1 ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1 ${OBJECTDIR}/_ext/120498020/adc.p1 ${OBJECTDIR}/_ext/38679104/usb_device.p1 ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1 ${OBJECTDIR}/_ext/120498020/system.p1 ${OBJECTDIR}/_ext/120498020/app_master.p1 ${OBJECTDIR}/_ext/2070800554/pwm_r.p1 ${OBJECTDIR}/_ext/2070800554/spi_r.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/120498020/main.p1.d ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1.d ${OBJECTDIR}/_ext/120498020/adc.p1.d ${OBJECTDIR}/_ext/38679104/usb_device.p1.d ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1.d ${OBJECTDIR}/_ext/120498020/system.p1.d ${OBJECTDIR}/_ext/120498020/app_master.p1.d ${OBJECTDIR}/_ext/2070800554/pwm_r.p1.d ${OBJECTDIR}/_ext/2070800554/spi_r.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/120498020/main.p1 ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1 ${OBJECTDIR}/_ext/120498020/adc.p1 ${OBJECTDIR}/_ext/38679104/usb_device.p1 ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1 ${OBJECTDIR}/_ext/120498020/system.p1 ${OBJECTDIR}/_ext/120498020/app_master.p1 ${OBJECTDIR}/_ext/2070800554/pwm_r.p1 ${OBJECTDIR}/_ext/2070800554/spi_r.p1

# Source Files
SOURCEFILES=../src/master/main.c ../src/master/usb_descriptors.c ../src/master/adc.c ../src/master/inc/src/usb_device.c ../src/master/inc/src/usb_device_hid.c ../src/master/system.c ../src/master/app_master.c ../../../../_ELECTRONIC/inc/pwm_r.c ../../../../_ELECTRONIC/inc/spi_r.c


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-coptercontrol_master.mk dist/${CND_CONF}/${IMAGE_TYPE}/FW_18F2550_master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F2550
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/120498020/main.p1: ../src/master/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120498020" 
	@${RM} ${OBJECTDIR}/_ext/120498020/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/120498020/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/120498020/main.p1  ../src/master/main.c 
	@-${MV} ${OBJECTDIR}/_ext/120498020/main.d ${OBJECTDIR}/_ext/120498020/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/120498020/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/120498020/usb_descriptors.p1: ../src/master/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120498020" 
	@${RM} ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/120498020/usb_descriptors.p1  ../src/master/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/120498020/usb_descriptors.d ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/120498020/adc.p1: ../src/master/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120498020" 
	@${RM} ${OBJECTDIR}/_ext/120498020/adc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/120498020/adc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/120498020/adc.p1  ../src/master/adc.c 
	@-${MV} ${OBJECTDIR}/_ext/120498020/adc.d ${OBJECTDIR}/_ext/120498020/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/120498020/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/38679104/usb_device.p1: ../src/master/inc/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/38679104" 
	@${RM} ${OBJECTDIR}/_ext/38679104/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/38679104/usb_device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/38679104/usb_device.p1  ../src/master/inc/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/38679104/usb_device.d ${OBJECTDIR}/_ext/38679104/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/38679104/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/38679104/usb_device_hid.p1: ../src/master/inc/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/38679104" 
	@${RM} ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/38679104/usb_device_hid.p1  ../src/master/inc/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/38679104/usb_device_hid.d ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/120498020/system.p1: ../src/master/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120498020" 
	@${RM} ${OBJECTDIR}/_ext/120498020/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/120498020/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/120498020/system.p1  ../src/master/system.c 
	@-${MV} ${OBJECTDIR}/_ext/120498020/system.d ${OBJECTDIR}/_ext/120498020/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/120498020/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/120498020/app_master.p1: ../src/master/app_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120498020" 
	@${RM} ${OBJECTDIR}/_ext/120498020/app_master.p1.d 
	@${RM} ${OBJECTDIR}/_ext/120498020/app_master.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/120498020/app_master.p1  ../src/master/app_master.c 
	@-${MV} ${OBJECTDIR}/_ext/120498020/app_master.d ${OBJECTDIR}/_ext/120498020/app_master.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/120498020/app_master.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2070800554/pwm_r.p1: ../../../../_ELECTRONIC/inc/pwm_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2070800554" 
	@${RM} ${OBJECTDIR}/_ext/2070800554/pwm_r.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2070800554/pwm_r.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2070800554/pwm_r.p1  ../../../../_ELECTRONIC/inc/pwm_r.c 
	@-${MV} ${OBJECTDIR}/_ext/2070800554/pwm_r.d ${OBJECTDIR}/_ext/2070800554/pwm_r.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2070800554/pwm_r.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2070800554/spi_r.p1: ../../../../_ELECTRONIC/inc/spi_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2070800554" 
	@${RM} ${OBJECTDIR}/_ext/2070800554/spi_r.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2070800554/spi_r.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2070800554/spi_r.p1  ../../../../_ELECTRONIC/inc/spi_r.c 
	@-${MV} ${OBJECTDIR}/_ext/2070800554/spi_r.d ${OBJECTDIR}/_ext/2070800554/spi_r.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2070800554/spi_r.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/_ext/120498020/main.p1: ../src/master/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120498020" 
	@${RM} ${OBJECTDIR}/_ext/120498020/main.p1.d 
	@${RM} ${OBJECTDIR}/_ext/120498020/main.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/120498020/main.p1  ../src/master/main.c 
	@-${MV} ${OBJECTDIR}/_ext/120498020/main.d ${OBJECTDIR}/_ext/120498020/main.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/120498020/main.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/120498020/usb_descriptors.p1: ../src/master/usb_descriptors.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120498020" 
	@${RM} ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1.d 
	@${RM} ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/120498020/usb_descriptors.p1  ../src/master/usb_descriptors.c 
	@-${MV} ${OBJECTDIR}/_ext/120498020/usb_descriptors.d ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/120498020/usb_descriptors.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/120498020/adc.p1: ../src/master/adc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120498020" 
	@${RM} ${OBJECTDIR}/_ext/120498020/adc.p1.d 
	@${RM} ${OBJECTDIR}/_ext/120498020/adc.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/120498020/adc.p1  ../src/master/adc.c 
	@-${MV} ${OBJECTDIR}/_ext/120498020/adc.d ${OBJECTDIR}/_ext/120498020/adc.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/120498020/adc.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/38679104/usb_device.p1: ../src/master/inc/src/usb_device.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/38679104" 
	@${RM} ${OBJECTDIR}/_ext/38679104/usb_device.p1.d 
	@${RM} ${OBJECTDIR}/_ext/38679104/usb_device.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/38679104/usb_device.p1  ../src/master/inc/src/usb_device.c 
	@-${MV} ${OBJECTDIR}/_ext/38679104/usb_device.d ${OBJECTDIR}/_ext/38679104/usb_device.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/38679104/usb_device.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/38679104/usb_device_hid.p1: ../src/master/inc/src/usb_device_hid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/38679104" 
	@${RM} ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1.d 
	@${RM} ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/38679104/usb_device_hid.p1  ../src/master/inc/src/usb_device_hid.c 
	@-${MV} ${OBJECTDIR}/_ext/38679104/usb_device_hid.d ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/38679104/usb_device_hid.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/120498020/system.p1: ../src/master/system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120498020" 
	@${RM} ${OBJECTDIR}/_ext/120498020/system.p1.d 
	@${RM} ${OBJECTDIR}/_ext/120498020/system.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/120498020/system.p1  ../src/master/system.c 
	@-${MV} ${OBJECTDIR}/_ext/120498020/system.d ${OBJECTDIR}/_ext/120498020/system.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/120498020/system.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/120498020/app_master.p1: ../src/master/app_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/120498020" 
	@${RM} ${OBJECTDIR}/_ext/120498020/app_master.p1.d 
	@${RM} ${OBJECTDIR}/_ext/120498020/app_master.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/120498020/app_master.p1  ../src/master/app_master.c 
	@-${MV} ${OBJECTDIR}/_ext/120498020/app_master.d ${OBJECTDIR}/_ext/120498020/app_master.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/120498020/app_master.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2070800554/pwm_r.p1: ../../../../_ELECTRONIC/inc/pwm_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2070800554" 
	@${RM} ${OBJECTDIR}/_ext/2070800554/pwm_r.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2070800554/pwm_r.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2070800554/pwm_r.p1  ../../../../_ELECTRONIC/inc/pwm_r.c 
	@-${MV} ${OBJECTDIR}/_ext/2070800554/pwm_r.d ${OBJECTDIR}/_ext/2070800554/pwm_r.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2070800554/pwm_r.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/_ext/2070800554/spi_r.p1: ../../../../_ELECTRONIC/inc/spi_r.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2070800554" 
	@${RM} ${OBJECTDIR}/_ext/2070800554/spi_r.p1.d 
	@${RM} ${OBJECTDIR}/_ext/2070800554/spi_r.p1 
	${MP_CC} --pass1 $(MP_EXTRA_CC_PRE) --chip=$(MP_PROCESSOR_OPTION) -Q -G  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    -o${OBJECTDIR}/_ext/2070800554/spi_r.p1  ../../../../_ELECTRONIC/inc/spi_r.c 
	@-${MV} ${OBJECTDIR}/_ext/2070800554/spi_r.d ${OBJECTDIR}/_ext/2070800554/spi_r.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/_ext/2070800554/spi_r.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/FW_18F2550_master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/FW_18F2550_master.X.${IMAGE_TYPE}.map  -D__DEBUG=1 --debugger=pickit3  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"     --rom=default,-7dc0-7fff --ram=default,-3f4-3ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/FW_18F2550_master.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/FW_18F2550_master.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/FW_18F2550_master.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) --chip=$(MP_PROCESSOR_OPTION) -G -mdist/${CND_CONF}/${IMAGE_TYPE}/FW_18F2550_master.X.${IMAGE_TYPE}.map  --double=24 --float=24 --emi=wordwrite --opt=default,+asm,-asmfile,+speed,-space,-debug --addrqual=ignore --mode=pro -P -N255 -I"../src/master" -I"../src/master/inc" -I"../../../../_ELECTRONIC/inc" --warn=0 --asmlist --summary=default,-psect,-class,+mem,-hex,-file --output=default,-inhx032 --runtime=default,+clear,+init,-keep,-no_startup,-download,+config,+clib,+plib --output=-mcof,+elf:multilocs --stack=compiled:auto:auto:auto "--errformat=%f:%l: error: (%n) %s" "--warnformat=%f:%l: warning: (%n) %s" "--msgformat=%f:%l: advisory: (%n) %s"    --memorysummary dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -odist/${CND_CONF}/${IMAGE_TYPE}/FW_18F2550_master.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/coptercontrol_master
	${RM} -r dist/coptercontrol_master

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
