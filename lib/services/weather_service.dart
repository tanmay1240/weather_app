import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/weather.dart';

class WeatherService {
  final String _apiKey = 'cdb5150b3c1b3c3b2c2a193bbe6aaa27';

  Future<Weather> fetchWeather(String cityName) async {
    const apiKey = 'cdb5150b3c1b3c3b2c2a193bbe6aaa27';

    final url = Uri.parse(
      'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$apiKey&units=metric',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return Weather.fromJson(json);
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
