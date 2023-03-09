// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Temperature _$$_TemperatureFromJson(Map<String, dynamic> json) =>
    _$_Temperature(
      morningTemperature: (json['morningTemperature'] as num).toDouble(),
      noonTemperature: (json['noonTemperature'] as num).toDouble(),
      nightTemperature: (json['nightTemperature'] as num).toDouble(),
      maxTemperature: (json['maxTemperature'] as num).toDouble(),
      yesterdayTemperature: (json['yesterdayTemperature'] as num).toDouble(),
      tomorrowTemperature: (json['tomorrowTemperature'] as num).toDouble(),
    );

Map<String, dynamic> _$$_TemperatureToJson(_$_Temperature instance) =>
    <String, dynamic>{
      'morningTemperature': instance.morningTemperature,
      'noonTemperature': instance.noonTemperature,
      'nightTemperature': instance.nightTemperature,
      'maxTemperature': instance.maxTemperature,
      'yesterdayTemperature': instance.yesterdayTemperature,
      'tomorrowTemperature': instance.tomorrowTemperature,
    };
