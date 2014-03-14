//Adapted for Spark Core by Paul Kourany, March 14, 2014

#include "Timer.h"

Timer t;
int pin = D7;   // Spark LED on pin D7

void setup()
{
  pinMode(pin, OUTPUT);
  t.pulse(pin, 10 * 1000, HIGH); // 10 seconds
  // t.pulse(pin, 10 * 60 * 1000, HIGH); // 10 minutes  
}

void loop()
{
  t.update();
}

