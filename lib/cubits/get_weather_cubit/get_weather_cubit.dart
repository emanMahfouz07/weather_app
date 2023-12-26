import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';
import 'package:weather_app/views/search_view.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(NoWeatherState());
  WeatherModel? weatherModel;
  void clearWeather() {
    weatherModel = null;
    emit(NoWeatherState());
  }

  getWeather({required String cityName}) async {
    try {
      weatherModel =
          await WeatherServices(Dio()).getCurrentWeather(cityName: cityName);
      emit(WeatherSuccessfulState(weatherModel: weatherModel!));
    } catch (e) {
      print("Error: $e");
      emit(WeatherFailureState());
    }
  }
}
