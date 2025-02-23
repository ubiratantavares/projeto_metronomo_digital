#include <stdio.h>
#include "pico/stdlib.h"
#include "hardware/i2c.h"
#include "ssd1306.h"

#define I2C_PORT i2c1
#define SDA_PIN 14
#define SCL_PIN 15

static ssd1306_t display;

static int ultimo_bpm = 0;
static int ultimo_uc = 0;
static int ultimo_ut = 0;

void inicializar_i2c(uint baudrate) {
  static bool i2c_initialized = false;
  if (!i2c_initialized) {
    i2c_init(I2C_PORT, baudrate);
    gpio_set_function(SDA_PIN, GPIO_FUNC_I2C);
    gpio_set_function(SCL_PIN, GPIO_FUNC_I2C);
    gpio_pull_up(SDA_PIN);
    gpio_pull_up(SCL_PIN);
    i2c_initialized = true;
  }
}

// inicializa o display OLED SSD1306
void inicializar_display_oled() {
  ssd1306_init(&display, 128, 64, 0x3C, I2C_PORT);
}

void limpar_display_oled() {
  ssd1306_clear(&display);
}

void desenhar_display_oled(int y, const char *msg) {
  ssd1306_draw_string(&display, 0, y, 2, msg);
}

void exibir_mensagem_display_oled() {
  ssd1306_show(&display);
}

void atualizar_display(int bpm, int uc, int ut) {
  if ((bpm != ultimo_bpm) || (uc != ultimo_uc) || (ut != ultimo_ut)) {
    ultimo_bpm = bpm;
    ultimo_uc = uc;
    ultimo_ut = ut;
    char msg_bpm[20];
    snprintf(msg_bpm, sizeof(msg_bpm), "%dBPM-%d/%d", bpm, uc, ut);
    limpar_display_oled();
    desenhar_display_oled(0, msg_bpm);
    exibir_mensagem_display_oled();
  }
}