# attitude via IR sensors

#
# default values for tiny and twog are:
# ADC_IR1    = ADC_1
# ADC_IR2    = ADC_2
# ADC_IR_TOP = ADC_0
# ADC_IR_NB_SAMPLES = 16
#
# to change just redefine these before including this file
#

#
# LPC only has one ADC
#
ifeq ($(ARCH), lpc21)
ap.CFLAGS += -DADC_CHANNEL_IR1=$(ADC_IR1) -DUSE_$(ADC_IR1)
ap.CFLAGS += -DADC_CHANNEL_IR2=$(ADC_IR2) -DUSE_$(ADC_IR2)
ap.CFLAGS += -DADC_CHANNEL_IR_TOP=$(ADC_IR_TOP) -DUSE_$(ADC_IR_TOP)
endif

#
# On STM32 let's hardwire infrared sensors to AD1 for now
#
ifeq ($(ARCH), stm32)
ap.CFLAGS += -DUSE_AD1
ap.CFLAGS += -DADC_CHANNEL_IR1=$(ADC_IR1) -DUSE_AD1_$(ADC_IR1)
ap.CFLAGS += -DADC_CHANNEL_IR2=$(ADC_IR2) -DUSE_AD1_$(ADC_IR2)
ap.CFLAGS += -DADC_CHANNEL_IR_TOP=$(ADC_IR_TOP) -DUSE_AD1_$(ADC_IR_TOP)
endif

ap.CFLAGS += -DADC_CHANNEL_IR_NB_SAMPLES=$(ADC_IR_NB_SAMPLES)

$(TARGET).CFLAGS += -DINFRARED
$(TARGET).srcs += $(SRC_FIXEDWING)/infrared.c

sim.srcs += $(SRC_ARCH)/sim_ir.c
jsbsim.srcs += $(SRC_ARCH)/jsbsim_ir.c