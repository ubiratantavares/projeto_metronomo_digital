cmake_minimum_required(VERSION 3.13)

# Importa o SDK do Pico
include(pico_sdk_import.cmake)

# Define o projeto
project(projeto_metronomo_digital C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Inicializa o SDK do Pico
pico_sdk_init()

# Adiciona o executável
add_executable(main 
    main.c
    buttom.c
    rgb.c
    potentiometer.c
    oled.c
    buzzer.c
    ssd1306.c
)

# Define os diretórios de inclusão
target_include_directories(main PRIVATE 
    ${CMAKE_CURRENT_LIST_DIR} 
    ${CMAKE_CURRENT_LIST_DIR}/projeto_metronomo_digital
)

target_link_libraries(main 
                      pico_stdlib      # Biblioteca padrão do Pico (necessária para stdio, GPIO, etc.)
                      hardware_pwm     # Controle de PWM
                      hardware_adc     # Conversor ADC
                      hardware_timer   # Temporizadores
                      hardware_gpio    # Manipulação de GPIO (caso seja necessário)
                      hardware_i2c     # Comunicação I2C para o display OLED
)

# Gera arquivos extras (como uf2 para upload no Pico)
pico_add_extra_outputs(main)

pico_enable_stdio_usb(main 1)
pico_enable_stdio_uart(main 1)
