import 'package:freezed_annotation/freezed_annotation.dart';

part 'temperature.freezed.dart';
part 'temperature.g.dart';

@freezed
class Temperature with _$Temperature {
  const factory Temperature({
    required double morningTemperature,
    required double noonTemperature,
    required double nightTemperature,
    required double maxTemperature,
    required double yesterdayTemperature,
    required double tomorrowTemperature,
  }) = _Temperature;

  factory Temperature.fromJson(Map<String, dynamic> json) =>
      _$TemperatureFromJson(json);
}
