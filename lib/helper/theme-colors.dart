import 'package:flutter/material.dart';

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.cyan;
  }
  switch (condition) {
    case 'Sunny':
      return Colors.orange;
    case 'Partly cloudy':
      return Colors.blue;
    case 'Cloudy':
      return Colors.grey;
    case 'Overcast':
      return Colors.grey;
    case 'Mist':
      return Colors.grey;
    case 'Patchy rain possible':
      return Colors.lightBlue;
    case 'Patchy sleet possible':
      return Colors.grey;
    case 'Patchy freezing drizzle possible':
      return Colors.grey;
    case 'Thundery outbreaks possible':
      return Colors.red;
    case 'Blizzard':
    case 'Fog':
      return Colors.grey;
    case 'Freezing fog':
      return Colors.grey;
    case 'Patchy light drizzle':
      return Colors.blue;
    case 'Light drizzle':
      return Colors.blue;
    case 'Freezing drizzle':
      return Colors.blue;
    case 'Heavy freezing drizzle':
      return Colors.blue;
    case 'Patchy light rain':
      return Colors.blue;
    case 'Light rain':
      return Colors.blue;
    case 'Moderate rain at times':
      return Colors.blue;
    case 'Moderate rain':
      return Colors.blue;
    case 'Heavy rain at times':
      return Colors.blue;
    case 'Heavy rain':
      return Colors.blue;
    case 'Light freezing rain':
      return Colors.blue;
    case 'Moderate or heavy freezing rain':
      return Colors.grey;
    case 'Light sleet':
      return Colors.blue;
    case 'Moderate or heavy sleet':
    case 'Patchy moderate snow':
    case 'Moderate snow':
    case 'Patchy heavy snow':
      return Colors.lightBlue;
    case 'Ice pellets':
      return Colors.grey;
    case 'Light rain shower':
      return Colors.blue;
    case 'Moderate or heavy rain shower':
      return Colors.blue;
    case 'Torrential rain shower':
      return Colors.blue;
    case 'Light sleet showers':
      return Colors.blue;
    case 'Moderate or heavy sleet showers':
      return Colors.blue;
    case 'Light showers of ice pellets':
      return Colors.grey;
    case 'Moderate or heavy showers of ice pellets':
      return Colors.grey;
    case 'Patchy light rain with thunder':
      return Colors.red;
    case 'Moderate or heavy rain with thunder':
      return Colors.red;
    case 'Patchy light snow with thunder':
      return Colors.red;
    case 'Moderate or heavy snow with thunder':
      return Colors.red;
    default:
      return Colors.lightBlue;
  }
}
