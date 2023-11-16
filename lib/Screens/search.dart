import 'package:flutter/material.dart';
import 'package:weather_app/Services/weather_services.dart';

class SearchPage extends StatelessWidget {
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search a City"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/cloudy.png',
            scale: 2,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onSubmitted: (data) {
                cityName = data;
                WeatherServices servcies = WeatherServices();
                servcies.getWeather(cityName: cityName!);
              },
              style: const TextStyle(fontSize: 22),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 28,
                ),
                hintText: "Enter location... ",
                hintStyle: TextStyle(fontSize: 14),
                suffixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
                label: Text(
                  "Search",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
