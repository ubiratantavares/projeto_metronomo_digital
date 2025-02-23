#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <string.h>

#include "pico/stdlib.h"
#include "hardware/pwm.h"
#include "hardware/adc.h"
#include "hardware/timer.h"

#include "buttom.h"
#include "rgb.h"
#include "potentiometer.h"
#include "oled.h"
#include "buzzer.h"

int main() {
  stdio_init_all();

  inicializar_BUTTON();

  inicializar_potenciometro();

  inicializar_BUZZER_A_PWM();
  inicializar_BUZZER_B_PWM();

  inicializar_LED_RGB();   

  uint baudrate = 100 * 1000;
  inicializar_i2c(baudrate);
  inicializar_display_oled();
  
  atualizar_bpm();

  gpio_set_irq_enabled_with_callback(BUTTON_PIN, GPIO_IRQ_EDGE_FALL, true, &button_callback);

  struct repeating_timer timer;
  add_repeating_timer_ms(500, adc_callback, NULL, &timer);

  while (true) { 
    executar_padrao(uc, ut, st);
    atualizar_display(bpm, uc, ut);
    //tight_loop_contents(); 
  }  
  return 0;
}
