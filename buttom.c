#include <stdio.h>
#include <stdbool.h>

#include "pico/stdlib.h"
#include "pico/time.h"

#include "hardware/timer.h"
#include "hardware/gpio.h"

#include "oled.h"
#include "rgb.h"
#include "buzzer.h"
#include "potentiometer.h"

const int BUTTON_PIN = 5;

volatile int uc = 2; // unidade de compasso
volatile int ut = 4; // unidade de tempo
volatile int st = 2; // subdivisao do tempo

volatile absolute_time_t last_press_time = 0;

const uint32_t DEBOUNCE_DELAY_MS = 200;

int button_press_count = 0;

void inicializar_BUTTON() {
  gpio_init(BUTTON_PIN);
  gpio_set_dir(BUTTON_PIN, GPIO_IN);
  gpio_pull_up(BUTTON_PIN);
}

float tempo_por_batida(int bpm) {  // em milisegundos
  return 60000.0/bpm; 
}

float tempo_por_subdivisao(int bpm) { 
  return tempo_por_batida(bpm)/st;
}

void executar_padrao(int uc, int ut, int st) {
  if ( (uc == 6)|| (uc == 9) || (uc == 12)) {
    uc /= 3;
  }
  if (uc == 2) {
    for (int i = 1; i <= uc; i++) {
      if (i == 1) {
        emitir_cor(1); // vermelho
        play_BUZZER_A(2500, 2);
      } else {
        emitir_cor(2); // verde
        play_BUZZER_A(2400, 2);
      }
      float tempo = tempo_por_subdivisao(bpm);
      for (int j = 1; j <= st; j++) {
        play_BUZZER_B(850, 2);
        sleep_ms(tempo);
      }
    }
  } else if (uc == 3) {
    for (int i = 1; i <= uc; i++) {
      if (i == 1) {
        emitir_cor(1); // vermelho
        play_BUZZER_A(2500, 2);
      } else if (i == 2) {
        emitir_cor(2); // verde
        play_BUZZER_A(2400, 2);
      } else {
        emitir_cor(3); // azul
        play_BUZZER_A(2400, 2);
      }
      float tempo = tempo_por_subdivisao(bpm);
      for (int j = 1; j <= st; j++) {
          play_BUZZER_B(850, 2);
          sleep_ms(tempo);
      }
    }
  } else {
    for (int i = 1; i <= uc; i++) {
      if (i == 1) {
        emitir_cor(1); // vermelho
        play_BUZZER_A(2500, 2);
      } else if (i == 2) {
        emitir_cor(2); // verde
        play_BUZZER_A(2400, 2);
      } else if (i == 3) {
        emitir_cor(3); // azul
        play_BUZZER_A(2400, 2);
      } else {
        emitir_cor(4); // amarelo
        play_BUZZER_A(2400,2);
      }
      float tempo = tempo_por_subdivisao(bpm);
      for (int j = 1; j <= st; j++) {
        play_BUZZER_B(850, 2);
        sleep_ms(tempo);
      }
    }
  }
}

void atualizar_compasso(uint gpio) {
  static const int compassos[6][6] = {{2, 4, 2}, {3, 4, 2}, {4, 4, 2}, 
                                      {6, 8, 3}, {9, 8, 3}, {12, 8, 3}};

  absolute_time_t now = get_absolute_time();

  if (absolute_time_diff_us(last_press_time, now) / 1000 < DEBOUNCE_DELAY_MS) {
    return;
  }
  
  last_press_time = now;

  button_press_count = (button_press_count + 1) % 6;

  uc = compassos[button_press_count][0];
  ut = compassos[button_press_count][1];
  st = compassos[button_press_count][2];

}

void button_callback(uint gpio, uint32_t events) {
  atualizar_compasso(gpio);
  atualizar_display(bpm, uc, ut);
}
