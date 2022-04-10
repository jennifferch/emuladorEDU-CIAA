# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# compile CXX with /usr/bin/c++
CXX_FLAGS =  -DMBED_CONF_CELLULAR_DEBUG_AT=true -DOS_STACK_SIZE=2048 -DMBED_CONF_LORA_ADR_ON=true -DMBED_CONF_LORA_PUBLIC_NETWORK=true -DMBED_CONF_LORA_NB_TRIALS=2 -DMBED_CONF_LORA_DOWNLINK_PREAMBLE_LENGTH=5 -DMBED_CONF_LORA_DUTY_CYCLE_ON=true -DMBED_CONF_LORA_MAX_SYS_RX_ERROR=10 -DMBED_CONF_LORA_NWKSKEY="{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}" -DMBED_CONF_LORA_APPSKEY="{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}" -DMBED_CONF_LORA_DEVICE_ADDRESS="0x00000000" -DMBED_CONF_LORA_TX_MAX_SIZE=255 -DMBED_CONF_LORA_UPLINK_PREAMBLE_LENGTH=8 -DMBED_CONF_LORA_DUTY_CYCLE_ON_JOIN=true -DMBED_CONF_LORA_FSB_MASK="{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x00FF}" -DMBED_CONF_LORA_FSB_MASK_CHINA="{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x00FF}" -DMBED_CONF_LORA_FSB_MASK="{0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF, 0x00FF}" -DMBED_CONF_LORA_PHY="EU868" -DMBED_CONF_LORA_OVER_THE_AIR_ACTIVATION=true -DMBED_CONF_LORA_DEVICE_EUI="{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}" -DMBED_CONF_LORA_AUTOMATIC_UPLINK_MESSAGE=true -DMBED_CONF_LORA_APPLICATION_EUI="{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}" -DMBED_CONF_LORA_APPLICATION_KEY="{0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00}"   -std=gnu++98

CXX_DEFINES = 

CXX_INCLUDES = -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/target_h -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/target_h/events -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/target_h/events/equeue -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/target_h/platform -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/stubs -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/.. -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/netsocket -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../targets/TARGET_SIMULATOR -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../platform -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../drivers -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../hal -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../events -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../events/equeue -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../rtos -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../rtos/TARGET_CORTEX -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../rtos/TARGET_CORTEX/rtx5/Include -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../cmsis -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/frameworks -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/frameworks/mbed-trace -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/frameworks/nanostack-libservice -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/frameworks/nanostack-libservice/mbed-client-libservice -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/filesystem/fat -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/filesystem/fat/ChaN -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/filesystem/bd -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/filesystem -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/filesystem/littlefs -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/filesystem/littlefs/littlefs -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/cellular/framework/API -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/cellular/framework/AT -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/cellular/framework -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/cellular/framework/common -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/lorawan -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/lorawan/lorastack -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/lorawan/lorastack/mac -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/lorawan/lorastack/phy -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/lorawan/system -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/mbedtls -I/home/jenny/Documents/UBA/Tesis/ciaa-simulator/ciaa-hal/mbed-os/UNITTESTS/../features/mbedtls/inc 

