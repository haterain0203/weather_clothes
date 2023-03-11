import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_clothes/feature/weather/temperature.dart';
import 'package:weather_clothes/feature/weather/weather_data.dart';

part 'weather.freezed.dart';
part 'weather.g.dart';

@freezed
class Weather with _$Weather {
  const factory Weather({
    required Temperature temperature,
    required WeatherData weatherData,
  }) = _Weather;

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);
}
