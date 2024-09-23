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
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blue,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  cityName,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  status,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                Text(
                  temp,
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Image.network(
              image.startsWith('http') || image.startsWith('https')
                  ? image
                  : 'https:$image',
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
