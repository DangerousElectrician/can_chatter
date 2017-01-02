# This file was automagically generated by mbed.org. For more information, 
# see http://mbed.org/handbook/Exporting-to-GCC-ARM-Embedded

# cross-platform directory manipulation
ifeq ($(shell echo $$OS),$$OS)
    MAKEDIR = if not exist "$(1)" mkdir "$(1)"
    RM = rmdir /S /Q "$(1)"
else
    MAKEDIR = $(SHELL) -c "mkdir -p \"$(1)\""
    RM = $(SHELL) -c "rm -rf \"$(1)\""
endif

ifeq (,$(filter build,$(notdir $(CURDIR))))
.SUFFIXES:
OBJDIR := build
mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
MAKETARGET = $(MAKE) --no-print-directory -C $(OBJDIR) -f $(mkfile_path) \
		SRCDIR=$(CURDIR) $(MAKECMDGOALS)
.PHONY: $(OBJDIR) clean
all:
	+@$(call MAKEDIR,$(OBJDIR))
	+@$(MAKETARGET)
$(OBJDIR): all
Makefile : ;
% :: $(OBJDIR) ; :
clean :
	$(call RM,$(OBJDIR))

else

VPATH = .. 

GCC_BIN = 
PROJECT = Unnamed_Project
OBJECTS = mbed-dev/targets/TARGET_STM/TARGET_STM32F0/TARGET_NUCLEO_F042K6/device/TOOLCHAIN_GCC_ARM/startup_stm32f042x6.o mbed-dev/platform/mbed_board.o mbed-dev/platform/mbed_wait_api_no_rtos.o mbed-dev/platform/mbed_mem_trace.o mbed-dev/platform/mbed_interface.o mbed-dev/platform/mbed_assert.o mbed-dev/platform/mbed_semihost_api.o mbed-dev/platform/mbed_error.o mbed-dev/platform/mbed_critical.o mbed-dev/hal/mbed_lp_ticker_api.o mbed-dev/hal/mbed_gpio.o mbed-dev/hal/mbed_us_ticker_api.o mbed-dev/hal/mbed_ticker_api.o mbed-dev/hal/mbed_pinmap_common.o mbed-dev/targets/TARGET_STM/trng_api.o mbed-dev/targets/TARGET_STM/stm_spi_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/spi_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/can_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/analogin_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/pinmap.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/pwmout_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/us_ticker.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/mbed_overrides.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/i2c_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/sleep.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/lp_ticker.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/serial_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/port_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/gpio_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/rtc_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/gpio_irq_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/analogout_api.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_i2c.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_tim_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_smartcard.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_tim.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_cec.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_can.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_rcc_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_wwdg.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_dma.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_crc_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_pwr_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_rtc.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_irda.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_flash_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_smbus.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_crc.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_adc_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_uart.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_adc.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_usart.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_rcc.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_rtc_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_i2s.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_tsc.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_pcd_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_spi.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_dac_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_i2c_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_cortex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_dac.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_pcd.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_spi_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_gpio.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_uart_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_comp.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_iwdg.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_flash.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_smartcard_ex.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device/stm32f0xx_hal_pwr.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/TARGET_NUCLEO_F042K6/PeripheralPins.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/TARGET_NUCLEO_F042K6/device/system_stm32f0xx.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/TARGET_NUCLEO_F042K6/device/cmsis_nvic.o mbed-dev/targets/TARGET_STM/TARGET_STM32F0/TARGET_NUCLEO_F042K6/device/hal_tick.o main.o mbed-dev/platform/retarget.o mbed-dev/platform/CallChain.o mbed-dev/platform/mbed_alloc_wrappers.o mbed-dev/platform/mbed_wait_api_rtos.o mbed-dev/platform/mbed_rtc_time.o mbed-dev/drivers/BusOut.o mbed-dev/drivers/Ethernet.o mbed-dev/drivers/BusInOut.o mbed-dev/drivers/I2C.o mbed-dev/drivers/FileBase.o mbed-dev/drivers/FilePath.o mbed-dev/drivers/Stream.o mbed-dev/drivers/FileLike.o mbed-dev/drivers/SPISlave.o mbed-dev/drivers/TimerEvent.o mbed-dev/drivers/Serial.o mbed-dev/drivers/AnalogIn.o mbed-dev/drivers/FileSystemLike.o mbed-dev/drivers/LocalFileSystem.o mbed-dev/drivers/SerialBase.o mbed-dev/drivers/I2CSlave.o mbed-dev/drivers/Timer.o mbed-dev/drivers/BusIn.o mbed-dev/drivers/CAN.o mbed-dev/drivers/Timeout.o mbed-dev/drivers/RawSerial.o mbed-dev/drivers/InterruptIn.o mbed-dev/drivers/Ticker.o mbed-dev/drivers/SPI.o mbed-dev/drivers/InterruptManager.o 
SYS_OBJECTS = 
INCLUDE_PATHS = -I../. -I../projectfiles -I../projectfiles/gcc_arm_NUCLEO_F042K6 -I../mbed-dev -I../mbed-dev/platform -I../mbed-dev/cmsis -I../mbed-dev/cmsis/TOOLCHAIN_GCC -I../mbed-dev/hal -I../mbed-dev/hal/hal -I../mbed-dev/hal/storage_abstraction -I../mbed-dev/targets -I../mbed-dev/targets/TARGET_STM -I../mbed-dev/targets/TARGET_STM/TARGET_STM32F0 -I../mbed-dev/targets/TARGET_STM/TARGET_STM32F0/device -I../mbed-dev/targets/TARGET_STM/TARGET_STM32F0/TARGET_NUCLEO_F042K6 -I../mbed-dev/targets/TARGET_STM/TARGET_STM32F0/TARGET_NUCLEO_F042K6/device -I../mbed-dev/targets/TARGET_STM/TARGET_STM32F0/TARGET_NUCLEO_F042K6/device/TOOLCHAIN_GCC_ARM -I../mbed-dev/drivers -I../. -I../. 
LIBRARY_PATHS = 
LIBRARIES = 
LINKER_SCRIPT = ../mbed-dev/targets/TARGET_STM/TARGET_STM32F0/TARGET_NUCLEO_F042K6/device/TOOLCHAIN_GCC_ARM/STM32F042X6.ld

############################################################################### 
AS      = $(GCC_BIN)arm-none-eabi-as
CC      = $(GCC_BIN)arm-none-eabi-gcc
CPP     = $(GCC_BIN)arm-none-eabi-g++
LD      = $(GCC_BIN)arm-none-eabi-gcc
OBJCOPY = $(GCC_BIN)arm-none-eabi-objcopy
OBJDUMP = $(GCC_BIN)arm-none-eabi-objdump
SIZE    = $(GCC_BIN)arm-none-eabi-size 


CPU = -mcpu=cortex-m0 -mthumb 
CC_FLAGS = -c -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m0 -mthumb -Os -std=gnu99 -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -DTARGET_LIKE_MBED -DDEVICE_RTC_LSI=1 -DDEVICE_PORTINOUT=1 -D__MBED_CMSIS_RTOS_CM -DTARGET_STM32F0 -DDEVICE_RTC=1 -DTOOLCHAIN_object -D__CMSIS_RTOS -DTOOLCHAIN_GCC -DDEVICE_CAN=1 -DTARGET_CORTEX_M -DARM_MATH_CM0 -DTARGET_UVISOR_UNSUPPORTED -DTARGET_M0 -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -D__CORTEX_M0 -DDEVICE_I2C=1 -DDEVICE_PORTOUT=1 -DTARGET_NUCLEO_F042K6 -DDEVICE_STDIO_MESSAGES=1 -DMBED_BUILD_TIMESTAMP=1483377596.48 -DTARGET_FF_ARDUINO -DTARGET_RELEASE -DTARGET_STM -DDEVICE_PORTIN=1 -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_SPI=1 -DMBED_RTOS_SINGLE_THREAD -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DTARGET_LIKE_CORTEX_M0 -DTARGET_STM32F042K6 -include mbed_config.h -MMD -MP
CPPC_FLAGS = -c -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m0 -mthumb -Os -std=gnu++98 -fno-rtti -Wvla -D__MBED__=1 -DDEVICE_I2CSLAVE=1 -DTARGET_LIKE_MBED -DDEVICE_RTC_LSI=1 -DDEVICE_PORTINOUT=1 -D__MBED_CMSIS_RTOS_CM -DTARGET_STM32F0 -DDEVICE_RTC=1 -DTOOLCHAIN_object -D__CMSIS_RTOS -DTOOLCHAIN_GCC -DDEVICE_CAN=1 -DTARGET_CORTEX_M -DARM_MATH_CM0 -DTARGET_UVISOR_UNSUPPORTED -DTARGET_M0 -DDEVICE_SERIAL=1 -DDEVICE_INTERRUPTIN=1 -D__CORTEX_M0 -DDEVICE_I2C=1 -DDEVICE_PORTOUT=1 -DTARGET_NUCLEO_F042K6 -DDEVICE_STDIO_MESSAGES=1 -DMBED_BUILD_TIMESTAMP=1483377596.48 -DTARGET_FF_ARDUINO -DTARGET_RELEASE -DTARGET_STM -DDEVICE_PORTIN=1 -DDEVICE_SLEEP=1 -DTOOLCHAIN_GCC_ARM -DDEVICE_SPI=1 -DMBED_RTOS_SINGLE_THREAD -DDEVICE_SPISLAVE=1 -DDEVICE_ANALOGIN=1 -DDEVICE_PWMOUT=1 -DTARGET_LIKE_CORTEX_M0 -DTARGET_STM32F042K6 -include mbed_config.h -MMD -MP
ASM_FLAGS = -x assembler-with-cpp -D__CORTEX_M0 -D__CMSIS_RTOS -D__MBED_CMSIS_RTOS_CM -DMBED_RTOS_SINGLE_THREAD -DARM_MATH_CM0 -c -Wall -Wextra -Wno-unused-parameter -Wno-missing-field-initializers -fmessage-length=0 -fno-exceptions -fno-builtin -ffunction-sections -fdata-sections -funsigned-char -MMD -fno-delete-null-pointer-checks -fomit-frame-pointer -mcpu=cortex-m0 -mthumb -Os
CC_SYMBOLS = 

LD_FLAGS =-Wl,--gc-sections -Wl,--wrap,main -Wl,--wrap,_malloc_r -Wl,--wrap,_free_r -Wl,--wrap,_realloc_r -mcpu=cortex-m0 -mthumb --specs=nano.specs 
LD_SYS_LIBS = -lstdc++ -lsupc++ -lm -lc -lgcc -lnosys


ifeq ($(DEBUG), 1)
  CC_FLAGS += -DDEBUG -O0
else
  CC_FLAGS += -DNDEBUG -Os
endif


.PHONY: all lst size

all: $(PROJECT).bin $(PROJECT).hex size



.asm.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<
.s.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<
.S.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC) $(CPU) -c $(ASM_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<

.c.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CC)  $(CC_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<

.cpp.o:
	+@$(call MAKEDIR,$(dir $@))
	$(CPP) $(CPPC_FLAGS) $(CC_SYMBOLS) $(INCLUDE_PATHS) -o $@ $<



$(PROJECT).elf: $(OBJECTS) $(SYS_OBJECTS) $(LINKER_SCRIPT)
	$(LD) $(LD_FLAGS) -T$(filter %.ld, $^) $(LIBRARY_PATHS) -o $@ $(filter %.o, $^) -Wl,--start-group $(LIBRARIES) $(LD_SYS_LIBS) -Wl,--end-group


$(PROJECT).bin: $(PROJECT).elf
	$(OBJCOPY) -O binary $< $@

$(PROJECT).hex: $(PROJECT).elf
	@$(OBJCOPY) -O ihex $< $@

$(PROJECT).lst: $(PROJECT).elf
	@$(OBJDUMP) -Sdh $< > $@

lst: $(PROJECT).lst

size: $(PROJECT).elf
	$(SIZE) $(PROJECT).elf

DEPS = $(OBJECTS:.o=.d) $(SYS_OBJECTS:.o=.d)
-include $(DEPS)


endif
