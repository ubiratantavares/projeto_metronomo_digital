#ifndef BUZZER_H
#define BUZZER_H

void inicializar_BUZZER_A_PWM();
void inicializar_BUZZER_B_PWM();
uint32_t get_wrap(int frequency);
void play_BUZZER_A(uint frequency, int duration_ms);
void play_BUZZER_B(uint frequency, int duration_ms);

#endif // BUZZER_H