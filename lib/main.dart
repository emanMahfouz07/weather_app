import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/helper/theme-colors.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/views/spash_screen.dart';
import 'cubits/get_weather_cubit/get_weather_state.dart';

void main() {
  runApp(const WeatherApp());
}
class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
            builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                useMaterial3: false,
                primarySwatch: getThemeColor(
                    BlocProvider.of<GetWeatherCubit>(context)
                        .weatherModel
                        ?.weatherStatus)),
            home: const SplashScreen(),
            routes: {
              SearchView.id: (context) => const SearchView(),
            
            },
          );
        }),
      ),
    );
  }
}
