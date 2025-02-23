#include "pico/stdlib.h"
#include "hardware/adc.h"
#include "buttom.h"

#define POTENTIOMETER_PIN 26
#define POTENTIOMETER_ADC_CHANNEL 0

volatile int bpm = 50;

void inicializar_potenciometro() {
  adc_init();
  adc_gpio_init(POTENTIOMETER_PIN);
  adc_select_input(POTENTIOMETER_ADC_CHANNEL);
}

int ler_valor_analogico() {
  return adc_read();
}

int converter_para_bpm(int valor) {
  const int adc_min = 0;
  const int adc_max = 4095;
  const int bpm_min = 50;
  const int bpm_max = 150;    
  return bpm_min + (valor - adc_min) * (bpm_max - bpm_min) / (adc_max - adc_min);
}

void atualizar_bpm() {
  int valor_adc = ler_valor_analogico();
  bpm = converter_para_bpm(valor_adc);
}

bool adc_callback(struct repeating_timer *t) {
  atualizar_bpm();
  int novo_bpm = bpm;
  atualizar_display(bpm, uc, ut);
  return true;
}