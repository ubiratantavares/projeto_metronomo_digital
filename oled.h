#ifndef OLED_H
#define OLED_H

#include "ssd1306.h"

void inicializar_i2c(uint baudrate);
void inicializar_display_oled();
void limpar_display_oled();
void desenhar_display_oled(int y, const char *msg);
void exibir_mensagem_display_oled();
void atualizar_display(int bpm, int uc, int ut);

#endif // OLED