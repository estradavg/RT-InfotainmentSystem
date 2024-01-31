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
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=croutine.c event_groups.c heap_4.c hooks.c list.c myprintf.c port.c queue.c tasks.c timers.c main.c i2cmaster.c lcdpcf8574.c pcf8574.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/croutine.o ${OBJECTDIR}/event_groups.o ${OBJECTDIR}/heap_4.o ${OBJECTDIR}/hooks.o ${OBJECTDIR}/list.o ${OBJECTDIR}/myprintf.o ${OBJECTDIR}/port.o ${OBJECTDIR}/queue.o ${OBJECTDIR}/tasks.o ${OBJECTDIR}/timers.o ${OBJECTDIR}/main.o ${OBJECTDIR}/i2cmaster.o ${OBJECTDIR}/lcdpcf8574.o ${OBJECTDIR}/pcf8574.o
POSSIBLE_DEPFILES=${OBJECTDIR}/croutine.o.d ${OBJECTDIR}/event_groups.o.d ${OBJECTDIR}/heap_4.o.d ${OBJECTDIR}/hooks.o.d ${OBJECTDIR}/list.o.d ${OBJECTDIR}/myprintf.o.d ${OBJECTDIR}/port.o.d ${OBJECTDIR}/queue.o.d ${OBJECTDIR}/tasks.o.d ${OBJECTDIR}/timers.o.d ${OBJECTDIR}/main.o.d ${OBJECTDIR}/i2cmaster.o.d ${OBJECTDIR}/lcdpcf8574.o.d ${OBJECTDIR}/pcf8574.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/croutine.o ${OBJECTDIR}/event_groups.o ${OBJECTDIR}/heap_4.o ${OBJECTDIR}/hooks.o ${OBJECTDIR}/list.o ${OBJECTDIR}/myprintf.o ${OBJECTDIR}/port.o ${OBJECTDIR}/queue.o ${OBJECTDIR}/tasks.o ${OBJECTDIR}/timers.o ${OBJECTDIR}/main.o ${OBJECTDIR}/i2cmaster.o ${OBJECTDIR}/lcdpcf8574.o ${OBJECTDIR}/pcf8574.o

# Source Files
SOURCEFILES=croutine.c event_groups.c heap_4.c hooks.c list.c myprintf.c port.c queue.c tasks.c timers.c main.c i2cmaster.c lcdpcf8574.c pcf8574.c



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
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega2560
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/croutine.o: croutine.c  .generated_files/a72234c14009f4c78b4fdca1f1f9bdc8fe800a54.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/croutine.o.d 
	@${RM} ${OBJECTDIR}/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/croutine.o.d" -MT "${OBJECTDIR}/croutine.o.d" -MT ${OBJECTDIR}/croutine.o -o ${OBJECTDIR}/croutine.o croutine.c 
	
${OBJECTDIR}/event_groups.o: event_groups.c  .generated_files/26ce22d854e6c91bda1a250b3e5331cfb98ba52c.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/event_groups.o.d 
	@${RM} ${OBJECTDIR}/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/event_groups.o.d" -MT "${OBJECTDIR}/event_groups.o.d" -MT ${OBJECTDIR}/event_groups.o -o ${OBJECTDIR}/event_groups.o event_groups.c 
	
${OBJECTDIR}/heap_4.o: heap_4.c  .generated_files/d833500d406ede6df2c54594b6b273c52ba8e7b3.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heap_4.o.d 
	@${RM} ${OBJECTDIR}/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/heap_4.o.d" -MT "${OBJECTDIR}/heap_4.o.d" -MT ${OBJECTDIR}/heap_4.o -o ${OBJECTDIR}/heap_4.o heap_4.c 
	
${OBJECTDIR}/hooks.o: hooks.c  .generated_files/607fefbdf4eedd79aebdc9f30ea5a6aef0006463.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hooks.o.d 
	@${RM} ${OBJECTDIR}/hooks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/hooks.o.d" -MT "${OBJECTDIR}/hooks.o.d" -MT ${OBJECTDIR}/hooks.o -o ${OBJECTDIR}/hooks.o hooks.c 
	
${OBJECTDIR}/list.o: list.c  .generated_files/dcd07879e52ea7bdf31bc357988a19ea6688592b.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/list.o.d 
	@${RM} ${OBJECTDIR}/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/list.o.d" -MT "${OBJECTDIR}/list.o.d" -MT ${OBJECTDIR}/list.o -o ${OBJECTDIR}/list.o list.c 
	
${OBJECTDIR}/myprintf.o: myprintf.c  .generated_files/3a44d051eb7b7175dfd14dfba81883ba1dc6a4bb.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/myprintf.o.d 
	@${RM} ${OBJECTDIR}/myprintf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myprintf.o.d" -MT "${OBJECTDIR}/myprintf.o.d" -MT ${OBJECTDIR}/myprintf.o -o ${OBJECTDIR}/myprintf.o myprintf.c 
	
${OBJECTDIR}/port.o: port.c  .generated_files/7d7710ed9376475b3be03726f575850f3396ffe4.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/port.o.d 
	@${RM} ${OBJECTDIR}/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/port.o.d" -MT "${OBJECTDIR}/port.o.d" -MT ${OBJECTDIR}/port.o -o ${OBJECTDIR}/port.o port.c 
	
${OBJECTDIR}/queue.o: queue.c  .generated_files/e8c0b4e77fdc82ebe9d4b373e892d9eb98014ce5.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/queue.o.d 
	@${RM} ${OBJECTDIR}/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/queue.o.d" -MT "${OBJECTDIR}/queue.o.d" -MT ${OBJECTDIR}/queue.o -o ${OBJECTDIR}/queue.o queue.c 
	
${OBJECTDIR}/tasks.o: tasks.c  .generated_files/ac0703e7014b053bdb154aec6144ef0251ca461a.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tasks.o.d 
	@${RM} ${OBJECTDIR}/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/tasks.o.d" -MT "${OBJECTDIR}/tasks.o.d" -MT ${OBJECTDIR}/tasks.o -o ${OBJECTDIR}/tasks.o tasks.c 
	
${OBJECTDIR}/timers.o: timers.c  .generated_files/e50df00290b362512087f1aaed97cc146ea6511d.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/timers.o.d" -MT "${OBJECTDIR}/timers.o.d" -MT ${OBJECTDIR}/timers.o -o ${OBJECTDIR}/timers.o timers.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/b8e89fadb1e5c08706497a82b88a5d56c8832314.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/i2cmaster.o: i2cmaster.c  .generated_files/d8698327d519d60b756b0aceef48a438dd0937e8.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2cmaster.o.d 
	@${RM} ${OBJECTDIR}/i2cmaster.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2cmaster.o.d" -MT "${OBJECTDIR}/i2cmaster.o.d" -MT ${OBJECTDIR}/i2cmaster.o -o ${OBJECTDIR}/i2cmaster.o i2cmaster.c 
	
${OBJECTDIR}/lcdpcf8574.o: lcdpcf8574.c  .generated_files/5fc84fd0b8747259ff285a0ce2b001645cfa049b.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcdpcf8574.o.d 
	@${RM} ${OBJECTDIR}/lcdpcf8574.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/lcdpcf8574.o.d" -MT "${OBJECTDIR}/lcdpcf8574.o.d" -MT ${OBJECTDIR}/lcdpcf8574.o -o ${OBJECTDIR}/lcdpcf8574.o lcdpcf8574.c 
	
${OBJECTDIR}/pcf8574.o: pcf8574.c  .generated_files/fc4bd2f5a45bf79ec16cef921389372778406cd0.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pcf8574.o.d 
	@${RM} ${OBJECTDIR}/pcf8574.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/pcf8574.o.d" -MT "${OBJECTDIR}/pcf8574.o.d" -MT ${OBJECTDIR}/pcf8574.o -o ${OBJECTDIR}/pcf8574.o pcf8574.c 
	
else
${OBJECTDIR}/croutine.o: croutine.c  .generated_files/7d816b8c324f8503dc1d2ffa1375e37d8fba62ae.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/croutine.o.d 
	@${RM} ${OBJECTDIR}/croutine.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/croutine.o.d" -MT "${OBJECTDIR}/croutine.o.d" -MT ${OBJECTDIR}/croutine.o -o ${OBJECTDIR}/croutine.o croutine.c 
	
${OBJECTDIR}/event_groups.o: event_groups.c  .generated_files/e58c8b7573ddc91cf77660a488e7196fefc3e812.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/event_groups.o.d 
	@${RM} ${OBJECTDIR}/event_groups.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/event_groups.o.d" -MT "${OBJECTDIR}/event_groups.o.d" -MT ${OBJECTDIR}/event_groups.o -o ${OBJECTDIR}/event_groups.o event_groups.c 
	
${OBJECTDIR}/heap_4.o: heap_4.c  .generated_files/9a0bad6c3c56e2e12cd3c06bf4e3c6a4f1ce4f86.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/heap_4.o.d 
	@${RM} ${OBJECTDIR}/heap_4.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/heap_4.o.d" -MT "${OBJECTDIR}/heap_4.o.d" -MT ${OBJECTDIR}/heap_4.o -o ${OBJECTDIR}/heap_4.o heap_4.c 
	
${OBJECTDIR}/hooks.o: hooks.c  .generated_files/d8881e82dd2ae826a2d9b3fbdb011327334243d2.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/hooks.o.d 
	@${RM} ${OBJECTDIR}/hooks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/hooks.o.d" -MT "${OBJECTDIR}/hooks.o.d" -MT ${OBJECTDIR}/hooks.o -o ${OBJECTDIR}/hooks.o hooks.c 
	
${OBJECTDIR}/list.o: list.c  .generated_files/4fbb789bf26372707990d1ab0af058a19d5b6c0f.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/list.o.d 
	@${RM} ${OBJECTDIR}/list.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/list.o.d" -MT "${OBJECTDIR}/list.o.d" -MT ${OBJECTDIR}/list.o -o ${OBJECTDIR}/list.o list.c 
	
${OBJECTDIR}/myprintf.o: myprintf.c  .generated_files/4b200ddc52bc01ce295e5d70d2ec10494a653e51.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/myprintf.o.d 
	@${RM} ${OBJECTDIR}/myprintf.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/myprintf.o.d" -MT "${OBJECTDIR}/myprintf.o.d" -MT ${OBJECTDIR}/myprintf.o -o ${OBJECTDIR}/myprintf.o myprintf.c 
	
${OBJECTDIR}/port.o: port.c  .generated_files/8ec7ba981bd155879fcc37cf732b14fec83c10aa.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/port.o.d 
	@${RM} ${OBJECTDIR}/port.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/port.o.d" -MT "${OBJECTDIR}/port.o.d" -MT ${OBJECTDIR}/port.o -o ${OBJECTDIR}/port.o port.c 
	
${OBJECTDIR}/queue.o: queue.c  .generated_files/55924915e15de2589b8e0b4e3df9cda3890d4ffc.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/queue.o.d 
	@${RM} ${OBJECTDIR}/queue.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/queue.o.d" -MT "${OBJECTDIR}/queue.o.d" -MT ${OBJECTDIR}/queue.o -o ${OBJECTDIR}/queue.o queue.c 
	
${OBJECTDIR}/tasks.o: tasks.c  .generated_files/b310a6326ebeeff594b839c6a99b92645eb45d4d.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/tasks.o.d 
	@${RM} ${OBJECTDIR}/tasks.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/tasks.o.d" -MT "${OBJECTDIR}/tasks.o.d" -MT ${OBJECTDIR}/tasks.o -o ${OBJECTDIR}/tasks.o tasks.c 
	
${OBJECTDIR}/timers.o: timers.c  .generated_files/b54d3a347a1315cb34d52d1dad35b2be171aba16.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/timers.o.d 
	@${RM} ${OBJECTDIR}/timers.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/timers.o.d" -MT "${OBJECTDIR}/timers.o.d" -MT ${OBJECTDIR}/timers.o -o ${OBJECTDIR}/timers.o timers.c 
	
${OBJECTDIR}/main.o: main.c  .generated_files/821287901eace235f63389885992177dd18599cb.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/i2cmaster.o: i2cmaster.c  .generated_files/c47d6003dd2a5c9342a9d2ec8a092077cc056d0c.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/i2cmaster.o.d 
	@${RM} ${OBJECTDIR}/i2cmaster.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/i2cmaster.o.d" -MT "${OBJECTDIR}/i2cmaster.o.d" -MT ${OBJECTDIR}/i2cmaster.o -o ${OBJECTDIR}/i2cmaster.o i2cmaster.c 
	
${OBJECTDIR}/lcdpcf8574.o: lcdpcf8574.c  .generated_files/aa85488df909a70c475e09193ac866de30e259c6.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lcdpcf8574.o.d 
	@${RM} ${OBJECTDIR}/lcdpcf8574.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/lcdpcf8574.o.d" -MT "${OBJECTDIR}/lcdpcf8574.o.d" -MT ${OBJECTDIR}/lcdpcf8574.o -o ${OBJECTDIR}/lcdpcf8574.o lcdpcf8574.c 
	
${OBJECTDIR}/pcf8574.o: pcf8574.c  .generated_files/fd0e12a7fc494996f9159433615938fac124a5ee.flag .generated_files/19efe4f9ad1034b8d45470dbc519d1d496fafa38.flag
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/pcf8574.o.d 
	@${RM} ${OBJECTDIR}/pcf8574.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -DXPRJ_default=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3     -MD -MP -MF "${OBJECTDIR}/pcf8574.o.d" -MT "${OBJECTDIR}/pcf8574.o.d" -MT ${OBJECTDIR}/pcf8574.o -o ${OBJECTDIR}/pcf8574.o pcf8574.c 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.hex 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O1 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -funsigned-char -funsigned-bitfields -Wall -gdwarf-3     $(COMPARISON_BUILD) -Wl,--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -o dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "dist/${CND_CONF}/${IMAGE_TYPE}/Reto.X.${IMAGE_TYPE}.hex"
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
