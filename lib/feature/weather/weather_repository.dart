import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_clothes/feature/weather/temperature.dart';
import 'package:weather_clothes/feature/weather/weather.dart';
import 'package:weather_clothes/feature/weather/weather_data.dart';

class WeatherRepository {
  Future<Weather> getWeather(double lat, double lon, String zipCode) async {
    final temperature = await _getTemperature(lat, lon);
    final weatherData = await _getWeatherDescAndIcon(zipCode);
    return Weather(
      temperature: temperature,
      weatherData: weatherData,
    );
  }

  //郵便番号から住所を取得する処理
  Future<Temperature> _getTemperature(double lat, double lon) async {
    //TODO 固定値
    final url =
        'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&hourly=temperature_2m&timezone=Asia%2FTokyo&daily=weathercode&daily=temperature_2m_max&past_days=1';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      final hourly = body['hourly'] as Map<String, dynamic>;
      final hourlyTemperatureList = hourly['temperature_2m'] as List;
      final daily = body['daily'] as Map<String, dynamic>;
      final weatherCodeList = daily['weathercode'] as List;
      final dailyTemperatureList = daily['temperature_2m_max'] as List;
      return Temperature(
        // 当日7:00の気温
        morningTemperature: hourlyTemperatureList[32] as double,
        // 当日12:00の気温
        noonTemperature: hourlyTemperatureList[37] as double,
        // 当日19:00の気温
        nightTemperature: hourlyTemperatureList[44] as double,
        // 当日の最高気温
        maxTemperature: dailyTemperatureList[1] as double,
        // 昨日の最高気温
        yesterdayTemperature: dailyTemperatureList[0] as double,
        // 明日の最高気温
        tomorrowTemperature: dailyTemperatureList[2] as double,
      );
    } else {
      throw Exception('Failed get Address');
    }
  }

  Future<WeatherData> _getWeatherDescAndIcon(String zipCode) async {
    var _zipCode = '';
    if (zipCode.contains('-')) {
      _zipCode = zipCode;
    } else {
      _zipCode = '${zipCode.substring(0, 3)}-${zipCode.substring(3)}';
    }
    final url =
        'https://api.openweathermap.org/data/2.5/weather?zip=$_zipCode,JP&appid=b10f2f5d63bee6f33f3ef043ceccb9ae&lang=ja&units=metric';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      final weather = body['weather'] as List;
      final weatherData = weather[0] as Map<String, dynamic>;
      return WeatherData.fromJson(weatherData);
    } else {
      throw Exception('Failed get OpenWeather');
    }
  }
}
