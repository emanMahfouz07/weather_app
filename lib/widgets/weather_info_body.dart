import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/helper/theme-colors.dart';
import 'package:weather_app/models/hour_model.dart';
import 'package:weather_app/models/icon_list.dart';
import 'package:weather_app/models/images_list.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/widgets/custom_container.dart';
import 'package:weather_app/widgets/detailes_container.dart';

class WeatherInfoBody extends StatefulWidget {
  const WeatherInfoBody({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final WeatherModel weather;

  @override
  State<WeatherInfoBody> createState() => _WeatherInfoBodyState();
}

class _WeatherInfoBodyState extends State<WeatherInfoBody> {
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    // Find the current index based on the updated hour
    setCurrentIndexToUpdatedHour();
  }

  void setCurrentIndexToUpdatedHour() {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    int updatedHour = weatherModel.date.hour;

    // Find the index where the hourlyWeather time matches the updated hour
    for (int i = 0; i < weatherModel.hourlyWeather.length; i++) {
      if (weatherModel.hourlyWeather[i].time.hour == updatedHour) {
        setState(() {
          currentIndex = i;
        });
        break;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        getThemeColor(weatherModel.weatherStatus)[200]!,
        getThemeColor(weatherModel.weatherStatus)[300]!,
        getThemeColor(weatherModel.weatherStatus)
      ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Text(
              weatherModel.cityName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  imagesList(weatherModel.weatherStatus),
                  width: 200,
                  height: 200,
                ),
                Text(
                  '${weatherModel.temp.round().toString()}℃',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 48,
                  ),
                ),
                Text(
                  weatherModel.weatherStatus,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.7),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: MediaQuery.of(context).size.height * 0.16,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: weatherModel.hourlyWeather.length,
                              itemBuilder: (context, index) {
                                HourlyWeather hourlyWeather =
                                    weatherModel.hourlyWeather[index];
                                return Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          currentIndex = index;
                                        });
                                      },
                                      child: CustomContainer(
                                        isActive: currentIndex == index,
                                        color: currentIndex == index
                                            ? Color(0xfff9c784)
                                            : Colors.transparent,
                                        image: iconList(
                                            weatherModel.weatherStatus),
                                        time:
                                            '${hourlyWeather.time.hour}:${hourlyWeather.time.minute}',
                                        day: 'Monday',
                                        temp: "${hourlyWeather.temperature}°C",
                                      ),
                                    ),
                                    const VerticalDivider(
                                      color: Colors.grey,
                                      indent: 15,
                                      endIndent: 20,
                                    ),
                                  ],
                                );
                              }),
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                    ),
                    DetailesContainer(
                      sunrise:
                          'Sun Rise: ${weatherModel.sunRise.hour}:${weatherModel.sunRise.minute} AM ',
                      sunset:
                          'Sun Set: ${weatherModel.sunSet.hour}:${weatherModel.sunSet.minute} PM ',
                      humidity: 'Humidity: ${weatherModel.humidity}%',
                      wind: 'Wind Speed: ${weatherModel.windSpeed}',
                      realfeel: 'Real Feel: ${weatherModel.feelslike}℃',
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
