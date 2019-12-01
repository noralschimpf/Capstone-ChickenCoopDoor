#ifndef constant_parameters_h
#define constant_parameters_h

/***********************
 * Pin Initialization **
 ***********************/
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

/***********************
 * LCD Backgrounds     *
 ***********************/
#define RED 0x1
#define YELLOW 0x3
#define GREEN 0x2
#define TEAL 0x6
#define BLUE 0x4
#define VIOLET 0x5
#define WHITE 0x7

/***********************
 *Sensor Preset Values**
 ***********************/
//TODO: ADJUST BASED ON MEASURED VALUES
#define TEMP_MAX 70 //degrees Celcius with maintained precision
#define TEMP_MIN 0  //degrees celcius with maintained precision
#define TEMP_ZEROPOINT 500 //milivolts for 0-degrees Celcius
#define TEMP_REGULATION 10 //miliVolts per degree Celcius
#define TEMP_THRESHOLD 440
#define LIGHT_THRESHOLD 40

/***********************
 *Macro Function Values*
 ***********************/
#define MORNING 0
#define EVENING 1

#endif