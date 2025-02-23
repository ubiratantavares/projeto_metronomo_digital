#ifndef RGB_H
#define RGB_H

void inicializar_LED_R();
void inicializar_LED_G();
void inicializar_LED_B();
void inicializar_LED_RGB();
void setar_estado_LED_R(bool state);
void setar_estado_LED_G(bool state);
void setar_estado_LED_B(bool state);
void setar_estado_LED_RGB(bool state[3]);
void emitir_cor(int opcao);

#endif // RGB_H
