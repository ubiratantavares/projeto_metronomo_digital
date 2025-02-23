#ifndef POTENTIOMETER_H
#define POTENTIOMETER_H

extern volatile int bpm;

void inicializar_potenciometro();

int ler_valor_analogico();

int converter_para_bpm(int valor);

void atualizar_bpm();

bool adc_callback(struct repeating_timer *t);

#endif // POTENTIOMETER_H
