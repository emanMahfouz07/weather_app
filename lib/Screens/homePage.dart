import 'package:flutter/material.dart';
import 'package:weather_app/Screens/search.dart';

class HomeMain extends StatelessWidget {
  const HomeMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Weather App"),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.sunny_snowing),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SearchPage();
                }));
              },
              icon: const Icon(Icons.search)),
        ],
      ),
      body: const Center(
        child: Text("There is no weather ಥ_ಥ Start to search"),
      ),
    );
  }
}
