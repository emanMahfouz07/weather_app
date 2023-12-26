import 'package:flutter/material.dart';

class DetailesContainer extends StatelessWidget {
  const DetailesContainer(
      {Key? key,
      required this.sunrise,
      required this.sunset,
      required this.humidity,
      required this.wind,
      required this.realfeel})
      : super(key: key);

  final String sunrise;
  final String sunset;
  final String humidity;
  final String wind;
  final String realfeel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.height * 0.18,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white.withOpacity(0.7),
      ),
      child: Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Text(
                    sunrise,
                  ),
                  Image.asset(
                    'assets/images/icons8-sunrise-64.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    sunset,
                  ),
                  Image.asset(
                    'assets/images/icons8-sunset-64.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(humidity),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(wind),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(realfeel),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
