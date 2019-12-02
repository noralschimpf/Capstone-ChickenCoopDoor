#ifndef constant_parameters_h
#define constant_parameters_h

/***********************
 * Pin Initialization **
 ***********************/
#define PIN_LORA_RX 0
#define PIN_LORA_TX 1
#define PIN_LIMITSWITCH_1 2
#define PIN_LIMITSWITCH_2 3
#define PIN_LASERSENSOR 4
#define PIN_LORA_RESET 5
#define PIN_LED_RED 6
#define PIN_LED_GREEN 7
#define PIN_RELAY_DOOROPEN 10
#define PIN_RELAY_DOORCLOSE 9
#define PIN_PROX_UP 12
#define PIN_PROX_DOWN 13
#define PIN_PHOTORESISTOR A2 
#define PIN_TEMPSENSOR A3
#define PIN_LCD_SDA A4
#define PIN_LCD_SCL A5

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
