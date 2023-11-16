import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherServices {
  String baseUrl = 'http://api.weatherapi.com/v1';

  String apiKey = '59e2c0add12e49cab2f153927232907';

  void getWeather({required String cityName}) async {
    Uri url = Uri.parse('$baseUrl/current.json?key=$apiKey&q=$cityName');
    http.Response response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);
  }
}
