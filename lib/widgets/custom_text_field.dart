import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, this.onSubmitted}) : super(key: key);
  final Function(String)? onSubmitted;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: TextField(
        onSubmitted: onSubmitted,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 28, horizontal: 16),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          hintText: 'Enter City Name',
          label: const Text('Search'),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.orange),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
