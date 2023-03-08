import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_clothes/feature/weather/period_temperature.dart';

class PeriodTemperatureRepository {
  //郵便番号から住所を取得する処理
  Future<PeriodTemperature> getPeriodTemperature(double lat, double lon) async {
    //TODO 固定値
    final url =
        'https://api.open-meteo.com/v1/forecast?latitude=$lat&longitude=$lon&hourly=temperature_2m&timezone=Asia%2FTokyo';

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      final hourly = body['hourly'] as Map<String, dynamic>;
      final temperatureList = hourly['temperature_2m'] as List;
      return PeriodTemperature(
        // 7:00の気温
        morningTemperature: temperatureList[8] as double,
        // 12:00の気温
        noonTemperature: temperatureList[13] as double,
        // 19:00の気温
        nightTemperature: temperatureList[20] as double,
      );
    } else {
      throw Exception('Failed get Address');
    }
  }
}
