//Adapted for Spark Core by Paul Kourany, March 14, 2014

#include "Timer.h"

Timer t;
int pin = D7;   // Use Spark LED on pin D7

void setup()
{
  Serial.begin(9600);
  pinMode(pin, OUTPUT);
  t.oscillate(pin, 100, LOW);
  t.every(1000, takeReading);
}

void loop()
{
  t.update();
}

void takeReading()
{
  Serial.println(analogRead(0));
}
