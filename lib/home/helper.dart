class Helper {
  static double convertKenvintoC(double temp) {
    // convert kelvin to celcius 
    // round to 1 decimal place
    return (temp - 273.15).roundToDouble();
  }
}
