#include <stdbool.h>
#include <stdio.h>

#include "pico/stdlib.h"

#define LED_R_PIN 13
#define LED_G_PIN 11
#define LED_B_PIN 12

void inicializar_LED_R() {
  gpio_init(LED_R_PIN);
  gpio_set_dir(LED_R_PIN, GPIO_OUT);
}

void inicializar_LED_G() {
  gpio_init(LED_G_PIN);
  gpio_set_dir(LED_G_PIN, GPIO_OUT);
}

void inicializar_LED_B() {
  gpio_init(LED_B_PIN);
  gpio_set_dir(LED_B_PIN, GPIO_OUT);
}

void inicializar_LED_RGB() {
  inicializar_LED_R();
  inicializar_LED_G();
  inicializar_LED_B();
}

void setar_estado_LED_R(bool state) {
  gpio_put(LED_R_PIN, state);
}

void setar_estado_LED_G(bool state) {
  gpio_put(LED_G_PIN, state);
}

void setar_estado_LED_B(bool state) {
  gpio_put(LED_B_PIN, state);
}

void setar_estado_LED_RGB(bool state[3]) {
  setar_estado_LED_R(state[0]);
  setar_estado_LED_G(state[1]);
  setar_estado_LED_B(state[2]);
}

void emitir_cor(int opcao) {
  bool states[3] = {false, false, false}; // preto
  switch(opcao) {
    case 1:  states[0] = true;  break; // vermelho
    case 2:  states[1] = true;  break; // verde
    case 3:  states[2] = true;  break; // azul
    case 4:  states[0] = true; states[1] = true;  break; // amarelo
    case 5:  states[0] = true; states[2] = true;  break; // magenta
    case 6:  states[1] = true; states[2] = true;  break; // ciano
    case 7:  states[0] = true; states[1] = true; states[2] = true; break; // branco
  }
  setar_estado_LED_RGB(states);
}
