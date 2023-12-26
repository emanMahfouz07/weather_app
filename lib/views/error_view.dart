import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe63946),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/x.png',
          ),
          const Text(
            'Sorry there is no city with that name',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
          )
        ],
      ),
    );
  }
}
