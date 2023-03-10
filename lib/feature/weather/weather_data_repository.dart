import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_clothes/feature/weather/weather_data.dart';

class WeatherDataRepository {
  Future<WeatherData> getWeatherDescAndIcon(String zipCode) async {
    var _zipCode = '';
    if (zipCode.contains('-')) {
      _zipCode = zipCode;
    } else {
      _zipCode = '${zipCode.substring(0, 3)}-${zipCode.substring(3)}';
    }
    final url =
        'https://api.openweathermap.org/data/2.5/forecast?zip=$_zipCode,JP&appid=b10f2f5d63bee6f33f3ef043ceccb9ae&lang=ja&units=metric';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      return WeatherData.fromJson(body);
    } else {
      throw Exception('Failed get OpenWeather');
    }
  }
}
