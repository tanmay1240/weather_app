import 'package:flutter/material.dart';
import '../models/weather.dart';

class WeatherCard extends StatelessWidget {
  final Weather weather;

  const WeatherCard({Key? key, required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              weather.cityName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '${weather.temperature}°C',
              style: const TextStyle(fontSize: 32),
            ),
            const SizedBox(height: 8),
            Text(weather.condition, style: const TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
