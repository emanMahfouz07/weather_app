import 'package:intl/intl.dart';
import 'package:weather_app/models/hour_model.dart';

class WeatherModel {
  final String cityName;
  final DateTime date;
  final String image;
  final double temp;
  final double minTemp;
  final double maxTemp;
  final String weatherStatus;
  final double windSpeed;
  final double feelslike;
  final int humidity;
  final DateTime sunRise;
  final DateTime sunSet;

  final List<HourlyWeather> hourlyWeather;

  WeatherModel({
    required this.cityName,
    required this.date,
    required this.image,
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.weatherStatus,
    required this.hourlyWeather,
    required this.windSpeed,
    required this.feelslike,
    required this.humidity,
    required this.sunRise,
    required this.sunSet,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    List<HourlyWeather> hourlyWeatherList = List.from(
      (json['forecast']['forecastday'][0]['hour'] as List)
          .map((hourJson) => HourlyWeather(
                time: DateTime.parse(hourJson['time']),
                temperature: hourJson['temp_c'].toDouble(),
                isDay: hourJson['is_day'] == 1, // Assuming 1 means true
                conditionText: hourJson['condition']['text'],

                // Add other necessary properties
              )),
    );
    DateTime parseDateTime(String time) {
      // Format: "08:04 AM"
      final format = DateFormat('hh:mm a');
      return format.parse(time);
    }

    return WeatherModel(
      cityName: json['location']['name'],
      date: DateTime.parse(json['current']['last_updated']),
      windSpeed: json['current']['wind_kph'],
      humidity: json['current']['humidity'],
      feelslike: json['current']['feelslike_c'],
      image: json['forecast']['forecastday'][0]['day']['condition']['icon'],
      temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      sunRise:
          parseDateTime(json['forecast']['forecastday'][0]['astro']['sunrise']),
      sunSet:
          parseDateTime(json['forecast']['forecastday'][0]['astro']['sunset']),
      weatherStatus: json['forecast']['forecastday'][0]['day']['condition']
          ['text'],
      hourlyWeather: hourlyWeatherList,
    );
  }
}
