#include "pico/stdlib.h"

#include "hardware/pwm.h"

#define BUZZER_A_PIN 21
#define BUZZER_B_PIN 10

void inicializar_BUZZER_A_PWM() {
  gpio_set_function(BUZZER_A_PIN, GPIO_FUNC_PWM);
  uint slice_num = pwm_gpio_to_slice_num(BUZZER_A_PIN);
  pwm_config config = pwm_get_default_config();
  pwm_config_set_clkdiv(&config, 4.0f);  // define o divisor do clock
  pwm_init(slice_num, &config, true);
}

void inicializar_BUZZER_B_PWM() {
  gpio_set_function(BUZZER_B_PIN, GPIO_FUNC_PWM);
  uint slice_num = pwm_gpio_to_slice_num(BUZZER_B_PIN);
  pwm_config config = pwm_get_default_config();
  pwm_config_set_clkdiv(&config, 4.0f);  // define o divisor do clock
  pwm_init(slice_num, &config, true);
}

uint32_t get_wrap(int frequency) {
  uint32_t clock_speed = 125000000;  // Clock base do Raspberry Pi Pico
  float clkdiv = 4.0f;               // Mesmo divisor de clock usado no PWM
  return (uint32_t)(clock_speed / (clkdiv * frequency)) - 1;
}

void play_BUZZER_A(uint frequency, int duration_ms) {
  uint slice = pwm_gpio_to_slice_num(BUZZER_A_PIN);
  uint chan = pwm_gpio_to_channel(BUZZER_A_PIN);
  if (frequency > 0) {
    uint32_t wrap = get_wrap(frequency);
    pwm_set_wrap(slice, wrap);
    pwm_set_chan_level(slice, chan, wrap/2);  // Duty cycle 50%
    pwm_set_enabled(slice, true);
  }
  sleep_ms(duration_ms);
  pwm_set_chan_level(slice, chan, 0);  // Desativa o sinal sonoro suavemente
  pwm_set_enabled(slice, false);
}

void play_BUZZER_B(uint frequency, int duration_ms) {
  uint slice = pwm_gpio_to_slice_num(BUZZER_B_PIN);
  uint chan = pwm_gpio_to_channel(BUZZER_B_PIN);
  if (frequency > 0) {
    uint32_t wrap = get_wrap(frequency);
    pwm_set_wrap(slice, wrap);
    pwm_set_chan_level(slice, chan, wrap/2);  // Duty cycle 50%
    pwm_set_enabled(slice, true);
  }
  sleep_ms(duration_ms);
  pwm_set_chan_level(slice, chan, 0);  // Desativa o sinal sonoro suavemente
  pwm_set_enabled(slice, false);
}