import 'package:flutter/material.dart';
import '../models/weather.dart';
import '../services/weather_service.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherService _weatherService = WeatherService();
  Weather? _weather;

  Weather? get weather => _weather;

  Future<void> fetchWeather(String cityName) async {
    try {
      _weather = await _weatherService.fetchWeather(cityName);
      notifyListeners();
    } catch (e) {
      print("Error: $e");
    }
  }
}
