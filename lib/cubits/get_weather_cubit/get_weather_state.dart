import 'package:weather_app/models/weather_model.dart';

class WeatherState {}

class NoWeatherState extends WeatherState {}

class WeatherSuccessfulState extends WeatherState {
  final WeatherModel weatherModel;

  WeatherSuccessfulState({required this.weatherModel});
}

class WeatherFailureState extends WeatherState {}
