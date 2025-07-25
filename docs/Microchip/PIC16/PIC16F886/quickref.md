# Quick guide to PIC16F886
## Reference of the PIC16 used by the MICROCHIP brand
- PIC16F886  

**NOTE:** This PIC16F microcontroller features digital outputs, digital inputs, ADC, PWM and serial communication.

## Pin Names
Pin names are named with a letter indicating the port and a number indicating the pin. For example, `a6` indicates pin 6 of port A. All names in **Aixt** are written in lowercase, to follow [V variable naming rules.] (https://github.com/vlang/v/blob/master/doc/docs.md#variables).

### PIC16F886 pin names
| PORT   | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|:------:|---|---|---|---|---|---|---|---|
| **A**  | a0| a1| a2| a3| a4| a5| - | - |
| **B**  | b0| b1| b2| b3| b4| b5| b6| b7|
| **C**  | c0| c1| c2| c3| c4| c5| c6| c7|

![alt text](image.png) (https://ww1.microchip.com/downloads/aemDocuments/documents/MCU08/ProductDocuments/DataSheets/30430D.pdf)

- `MCLR` It means Master Clear / Reset, that is, a controller reset pin and it connects to Vcc (+5V).
- `OSC` Oscillator Pins stands for Oscillator Pins, which control the system clock, determining the program execution speed. For the PIC16F83-1, it's an internal output, in crystal mode, connecting to the second pin (it has one input and one output, OSC1 and OSC2).
- `VDD` Positive power and ground reference for logic and I/O pins, respectively. These pins have diode protection.
- `VSS` Stands for Voltage Source, Source or Voltage Supply Source and is the ground pin (GND), also known as voltage reference, 0 volts for the entire circuit.

In the _PIC16_ microcontroller families, the port registers are divided into: 

- `TRIS` To configure each pin of the port
- `PORT` To manage pins as inputs or outputs

Then, to facilitate the implementation (and not generate unnecessary code) of this _Aixt_ port, the name of each pin differs from its configuration, input and output as in the following example: 

- `b5_s` Bit name to configure the `b5` pin as an input or output
- `b5` Bit name to read the `b5` pin as an input or output

It has two analog circuit input and output pins to show the programmed on and off behavior of the LED.

| Port | 0   | 1   | 2   | 3   | 4   | 5   | 6   | 7   |
|:----:|-----|-----|-----|-----|-----|-----|-----|-----|
| **A**| -| -| -| -| -|-----|-----|-----|
| **B**| -| -| -| `b3`| `b4`| -| -| -|

### Integrated Components 
- It has 11 analog pins that are distributed in port A.

| PORT |  0  |  1  |  2  |  3  |  4  |  5  |  6  |  7  | 
|:------:| --- | --- | --- | --- | --- | --- | --- | --- |
| **A**  | AN0 | AN1 | AN2 | AN3 |  -  | AN4 |  -  |  -  |
| **B**  | AN12| AN10| AN8 | AN9 | AN11| AN13|  -  |  -  |
| **C**  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |  -  |

- It has two pins for PWM modulation.

| PORT | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|:------:|---|---|---|---|---|---|---|---|
| **A**  | - | - | - | - | - | - | - | - |
| **B**  | - | - | - | - | - | - | - | - |
| **C**  | - | c1| c2| - | - | - | - | - |

- IIt has two pins for serial communication.   

| Puerto | 0 | 1 | 2 | 3 | 4 | 5 | 6 | 7 |
|:------:|---|---|---|---|---|---|---|---|
| **A**  | - | - | - | - | - | - | - | - |
| **B**  | - | - | - | - | - | - | - | - |
| **C**  | - | - | - | - | - | - | c6| c7|

## General $\mu C$ control

```v
// by default the CPU oscillation frequency is 10Mhz
@[as_macro] const cpu_freq = 4_000_000  // change it to 4Mhz

### Supported functions
The functions contained in the API include digital inputs or outputs, analog-to-digital converter, PWM modulation, and serial communication.

|name                            | description                                              |
|:------------------------------:|----------------------------------------------------------|
|`pin.setup(pin_name, mode)`     | SET UP               |`PIN_NAME` in `PIN_MODE`           |
|`pin.high(PIN_NAME)`            | Light `PIN_NAME` |
|`pin.low(PIN_NAME)`             | Turn off             |`PIN_NAME`                         |
|`pin.write(PIN_NAME,VAL)`       | Writes `VAL` in      |`PIN_NAME`                         |
|`pin.read(PIN_NAME)`            | read `PIN_NAME`                                          |
|`pin.digital(PIN)`              | Configure digital I/0 `PIN_NAME`                         |
|`pin (PIN)`                     | Configure            |`PIN_OUTPUT` or `PIN_INPUT`        |
|`port`                          | Initialize `port`|
|`port.read(PORT_NAME)`          | read `PORT_NAME`                                         |
|`port.setup(PORT_NAME, VALUE)`  | Configure            |`PORT_NAME` assigns value `VALUE`  |
|`port.write(PORT_NAME, VALUE)`  | writes               |`PORT_NAME` in `VALUE`             |
|`adc.setup()`                   | Configure the        |`adc`                              |
|`adc.read(channel)`             | Configure the channel `channel` of the `adc`             |
|`adc`                           | Inicialize `adc`                                         |
|`pwm.setup()`                   | Configure the registry `pwm`                             |
|`pwm.write(duty)`               | Calculate the        |`duty` of the `pwm`                |
|`pwm`                           | Inicialize `pwm`                                         |
|`uart.setup()`                  | Configure the        |`uart`                             |
|`uart.read()`                   | read the data of the `uart`                              |
|`uart.write()`                  | writes the data of the `uart`                            |
|`uart`                          | Inicialize the       |`uart`                             |
|`time.sleep(time)`              | projection in        |`seg`                              |
|`time.sleep_us(time)`           | projection in        |`microseg`                         |
|`time.sleep_ms(time)`           | projection in        |`miliseg`                          |
|`time`                          | Inicialize the       |`time`                             |

### Examples of the different API functions in the _Aixt_v language 

## Time

```v

time.sleep(5)       // 5 second time
time.sleep_us(10)   // Time of 10 microsegundos
time.sleep_ms(500)  // Time of 500 milisegundos

```

## Pin configuration

```v

pin.setup(pin.a5, pin.output)      // Function to configure the pin as output 
pin.setup(pin.b7, pin.output)      // Función para configurar el pin como salida
pin.setup(pin.a0, pin.input)    // Función para configurar el pin como entrada
pin.setup(pin.c4, pin.input)    // Función para configurar el pin como entrada

pin.high(pin.a5)    // Función para encender el pin           
pin.low(pin.a5)     // Función para apagar el pin

pin.write(pin.a2, 0)  // Función sobre escribir el pin
pin.write(pin.a2, 1)  // Función sobre escribir el pin

pin.read(pin.b4)      // Función para leer el pin
pin.read(pin.c7)      // Función para leer el pin

```

Ejemplo de prender y apagar un led:

```v
      
for {

    pin.high(pin.c7);
    sleep_us(500);
    pin.low(pin.c7);
    sleep_us(500);

}

```
Ejemplo de prender y apagar un led con una entrada digital:

```v

pin.digital();

for {
    
    if(b4 == 1){        // Condición si encuentra un 1 en el c2
        
        pin.high(pin.a4);
        pin.high(pin.a5);
    }
    
    else if(b5 == 1){   // Condición si encuentra un 1 en el c4
        
        pin.low(pin.a4);
        pin.low(pin.a5);
    }

}
        
```
## Configuración del port

```v

port.setup(port.b, ob00000000)      // Función para configurar el puerto como salida 

```

Ejemplo de prender y apagar un puerto del microcontrolador:

```v
      
for {
        
    port.write(port.b,0b01010101);
    sleep_ms(500);
    port.write(port.b,0b10101010);
    sleep_ms(500);      
        
}

```

## Configuración del ADC

```v

adc.setup()     // Iicializa el ADC
adc.read(0)     // Escoge el pin denl canal analogico

```

Ejemplo de prender y apagar leds dependiendo del valor del ADC:

```v

unsigned int adc_result;  // Declaración de variable para almacenar el valor del ADC
        
for {
            
    adc_result = adc.read(0) ; // Almacena el valor del ADC
    
    if ( adc_result >= 1020 ){
        
        pin.high(pin.b0);
        pin.high(pin.b1);
        pin.high(pin.b2);           
    }
    
    else if ( adc_result >= 820 ){
        
        pin.high(pin.b0);
        pin.high(pin.b1);
        pin.low(pin.b2);
    }
    
    else if ( adc_result >= 620 ){
        
        pin.high(pin.b0);
        pin.low(pin.b1);
        pin.low(pin.b2);   
    }
        
    else {
        
        pin.low(pin.b0);
        pin.low(pin.b1);
        pin.low(pin.b2);      
    }

}

```

## Configuración del PWM

```v

pwm.setup()     // Inicializa el pwm
pwm.write()     // Calcula el ciclo de trabajo 

```
Ejemplo de variar la intensidad de un led:

```v

for {
    
    adc = adc.read(0);  // Almacena el valor del ADC
        
    pwm.write(adc);  // Realiza el calculo del Duty y lo guarda en CCP2
        
}

```

## Configuración del UART Transmisión

```v

uart.setup()     // Inicializa la comunicación serial

```
Ejemplo enviar un caracter y visualizarlo en un mensaje:

```v

for {
            
    uart.write(0x33);
	time.sleep_ms(500);
	uart.write(0x99);
	time.sleep_ms(500);
    
}

```

## Configuración del UART Recepción

```v

uart.setup()     // Inicializa la comunicación serial

```
Ejemplo prender y apagar un el puerto del micro enviando un caracteres desde el PC:

```v

port.setup(port.b, 0b00000000);
port.write(port.b, 0b00000000);
pin.setup(pin.c7, pin.input);
uart.setup();

for {

    port.read(port.b) = uart.read();

}

```