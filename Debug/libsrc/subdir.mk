################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../libsrc/cstack.c 

O_SRCS += \
../libsrc/cstack.o 

OBJS += \
./libsrc/cstack.o 

C_DEPS += \
./libsrc/cstack.d 


# Each subdirectory must supply rules for building sources it contributes
libsrc/%.o: ../libsrc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/rtrk/workspace/genericStack/libinc" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


