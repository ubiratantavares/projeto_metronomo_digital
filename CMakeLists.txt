cmake_minimum_required(VERSION 3.13)

# importa o SDK do pico
include(pico_sdk_import.cmake)

# define o projeto
project(test_project C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# inicializa o SDK do Pico
pico_sdk_init()

# adiciona o executável
add_executable(test test.c)

# gera arquivos extras (como uf2 para upload no pico)
pico_add_extra_outputs(test)

pico_enable_stdio_usb(test 1)
pico_enable_stdio_uart(test 1)

target_include_directories(test PRIVATE ${CMAKE_CURRENT_LIST_DIR})

# adiciona a biblioteca Wi-Fi corretamente e a biblioteca LWIP para suporte à rede
target_link_libraries(test pico_stdlib pico_cyw43_arch_lwip_threadsafe_background)
