set(PICO_SDK_PATH "$ENV{PICO_SDK_PATH}" CACHE PATH "Path to PICO SDK")

if (NOT EXISTS "${PICO_SDK_PATH}/pico_sdk_init.cmake")
    message(FATAL_ERROR "PICO SDK not found at ${PICO_SDK_PATH}")
endif ()

include("${PICO_SDK_PATH}/pico_sdk_init.cmake")
