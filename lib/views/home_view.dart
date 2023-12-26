import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/views/error_view.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Expanded(
                child: BlocBuilder<GetWeatherCubit, WeatherState>(
                  builder: (context, state) {
                    if (state is NoWeatherState) {
                      return NoWeatherBody();
                    } else if (state is WeatherSuccessfulState) {
                      return WeatherInfoBody(
                        weather: state.weatherModel,
                      );
                    } else {
                      return ErrorPage();
                    }
                  },
                ),
              ),
            ],
          ),
          Positioned(
            top: 16.0,
            right: 16.0,
            child: IconButton(
              onPressed: () {
                
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const SearchView();
                }));
              },
              icon: const Icon(Icons.search),
            ),
          ),
        ],
      ),
    );
  }
}
