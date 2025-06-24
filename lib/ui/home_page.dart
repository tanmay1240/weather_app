import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/weather_provider.dart';
import 'weather_card.dart';

class HomePage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Weather App'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Enter city name',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    final city = _controller.text;
                    if (city.isNotEmpty) {
                      weatherProvider.fetchWeather(city);
                    }
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            weatherProvider.weather == null
                ? const Text('Search for a city to get weather data.')
                : WeatherCard(weather: weatherProvider.weather!),
          ],
        ),
      ),
    );
  }
}
