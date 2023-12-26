import 'package:flutter/material.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer(
      {Key? key,
      required this.cityName,
      required this.image,
      required this.status,
      required this.temp})
      : super(key: key);
  final String cityName;
  final String image;
  final String status;
  final String temp;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: Row(
          children: [
            Column(
              children: [
                Text(
                 cityName,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
                Text(
                 status,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                temp,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Spacer(),
            Image.asset(
             image,
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
