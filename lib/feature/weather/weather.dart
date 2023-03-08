import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required int weatherCode,
    required double morningTemperature,
    required double noonTemperature,
    required double nightTemperature,
    required double maxTemperature,
    required double yesterdayTemperature,
    required double tomorrowTemperature,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
