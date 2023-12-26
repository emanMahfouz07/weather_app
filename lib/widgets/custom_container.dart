import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    required this.image,
    required this.time,
    required this.day,
    required this.temp, required this.color, required this.isActive,
  }) : super(key: key);

  final String image;
  final String time;
  final String day;
  final String temp;
  final Color color;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,),
      child: Container(
        decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(time),
                  Text(day),
                  Image.asset(
                    image,
                    width: 45,
                    height: 45,
                  ),
                  Text(temp),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
