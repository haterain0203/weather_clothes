import 'package:freezed_annotation/freezed_annotation.dart';

part 'period_temperature.freezed.dart';
part 'period_temperature.g.dart';

@freezed
class PeriodTemperature with _$PeriodTemperature {
  const factory PeriodTemperature({
    required double morningTemperature,
    required double noonTemperature,
    required double nightTemperature,
  }) = _PeriodTemperature;

  factory PeriodTemperature.fromJson(Map<String, dynamic> json) =>
      _$PeriodTemperatureFromJson(json);
}
