// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period_temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PeriodTemperature _$$_PeriodTemperatureFromJson(Map<String, dynamic> json) =>
    _$_PeriodTemperature(
      morningTemperature: (json['morningTemperature'] as num).toDouble(),
      noonTemperature: (json['noonTemperature'] as num).toDouble(),
      nightTemperature: (json['nightTemperature'] as num).toDouble(),
    );

Map<String, dynamic> _$$_PeriodTemperatureToJson(
        _$_PeriodTemperature instance) =>
    <String, dynamic>{
      'morningTemperature': instance.morningTemperature,
      'noonTemperature': instance.noonTemperature,
      'nightTemperature': instance.nightTemperature,
    };
