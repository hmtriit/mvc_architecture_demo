import 'dart:developer';

import 'package:http/http.dart' as http;

class HomeRepository {
  Future<http.Response> getWeatherData(
      {required String latitude, required String longitude}) async {
    final response = await http.get(
      Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=60cf42c9e19da1a5c14cbff373991962"),
    );
    log("Weather Data : ${response.body}");
    return response;
  }
}