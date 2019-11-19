#ifndef constant_parameters_h
#define constant_parameters_h

#define PIN_LORA_RX 2
#define PIN_LORA_TX 3
#define PIN_LIMITSWITCH_1 4
#define PIN_LIMITSWITCH_2 5
#define PIN_LASERSENSOR 6
#define PIN_LORA_RESET 11
#define PIN_LED_RED 12
#define PIN_LED_GREEN 13
#define PIN_RELAY_DOOROPEN 15
#define PIN_RELAY_DOORCLOSE 16
#define PIN_PROX_UP 18
#define PIN_PROX_DOWN 19
#define PIN_PHOTORESISTOR 25
#define PIN_TEMPSENSOR 26
#define PIN_LCD_SDA 27
#define PIN_LCD_SCL 28


//TODO: ADJUST BASED ON MEASURED VALUES
#define TEMP_MAX 70 //degrees Celcius with maintained precision
#define TEMP_MIN 0  //degrees celcius with maintained precision
#define TEMP_ZEROPOINT 500 //milivolts for 0-degrees Celcius
#define TEMP_REGULATION 10 //miliVolts per degree Celcius



#endif