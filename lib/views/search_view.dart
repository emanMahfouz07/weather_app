import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/custom_text_field.dart';
import 'package:weather_app/widgets/weather_container.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class SearchView extends StatefulWidget {
  const SearchView({Key? key}) : super(key: key);
  static String id = 'searchView';

  @override
  _SearchViewState createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  List<WeatherModel> searchedWeather = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search for a city..'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomTextField(
              onSubmitted: (value) async {
                var getWeatherCubit = BlocProvider.of<GetWeatherCubit>(context);
                getWeatherCubit.getWeather(cityName: value);
                await Future.delayed(Duration(seconds: 1));

                setState(() {});

                setState(() {
                  searchedWeather.add(getWeatherCubit.weatherModel!);
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchedWeather.length,
              itemBuilder: (context, index) {
                WeatherModel weatherModel = searchedWeather[index];
                return WeatherContainer(
                  cityName: weatherModel.cityName,
                  image: weatherModel.image,
                  status: weatherModel.weatherStatus,
                  temp: weatherModel.temp.round().toString(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
