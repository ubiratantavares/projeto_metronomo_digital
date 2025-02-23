#ifndef BOTTOM_H
#define BOTTOM_H

extern const int BUTTON_PIN;

extern volatile int uc;
extern volatile int ut;
extern volatile int st;

void inicializar_BUTTON();

float tempo_por_batida(int bpm);

float tempo_por_subdivisao(int bpm);

void executar_padrao(int uc, int ut, int st);

void atualizar_compasso(uint gpio);

void button_callback(uint gpio, uint32_t events);

#endif // BOTTOM_H