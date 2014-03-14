//Adapted for Spark Core by Paul Kourany, March 14, 2014
//Uses Spark LED on pin D7

#include "Timer.h"

Timer t;

int ledEvent;

void setup()
{
  Serial.begin(9600);
  int tickEvent = t.every(2000, doSomething);
  Serial.print("2 second tick started id=");
  Serial.println(tickEvent);
  
  pinMode(D7, OUTPUT);
  ledEvent = t.oscillate(D7, 50, HIGH);
  Serial.print("LED event started id=");
  Serial.println(ledEvent);
  
  int afterEvent = t.after(10000, doAfter);
  Serial.print("After event started id=");
  Serial.println(afterEvent); 
  
}

void loop()
{
  t.update();
}

void doSomething()
{
  Serial.print("2 second tick: millis()=");
  Serial.println(millis());
}


void doAfter()
{
  Serial.println("stop the led event");
  t.stop(ledEvent);
  t.oscillate(D7, 500, HIGH, 5);
}
