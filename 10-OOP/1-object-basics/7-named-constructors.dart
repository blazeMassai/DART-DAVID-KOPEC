
//Named constructors are regular constructors that also have an identifier associated with
//them. Perhaps we have a class Temperature that maintains a temperature in Kelvin degrees. It has three constructors.
//One is for creating a Temperature with a number already in degrees Kelvin. The other two are for converting from
//Celsius or Fahrenheit.

import 'dart:math';

class Temperature {
  late double degreesKelvin;
  Temperature(this.degreesKelvin);

  Temperature.fromCelsius(double degreesCelsius) {
    degreesKelvin = degreesCelsius + 273.15;
  }

  Temperature.fromFahrenheit(double degreesFahrenheit) {
    degreesKelvin = 5 / 9 * ((degreesFahrenheit) - 32) + 273.15;
  }
}

void main() {
  Temperature x = Temperature(15);

  print(x.degreesKelvin);
}