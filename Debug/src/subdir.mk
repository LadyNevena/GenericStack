################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/testArray.c \
../src/testInit1.c \
../src/testOverflow1.c \
../src/testOverflow2.c \
../src/testPush.c \
../src/testSegFault.c \
../src/testUnderflow1.c \
../src/testUnderflow2.c 

OBJS += \
./src/testArray.o \
./src/testInit1.o \
./src/testOverflow1.o \
./src/testOverflow2.o \
./src/testPush.o \
./src/testSegFault.o \
./src/testUnderflow1.o \
./src/testUnderflow2.o 

C_DEPS += \
./src/testArray.d \
./src/testInit1.d \
./src/testOverflow1.d \
./src/testOverflow2.d \
./src/testPush.d \
./src/testSegFault.d \
./src/testUnderflow1.d \
./src/testUnderflow2.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler'
	gcc -I"/home/rtrk/workspace/genericStack/libinc" -O0 -g3 -Wall -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


