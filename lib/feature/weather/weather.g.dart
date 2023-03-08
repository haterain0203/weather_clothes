// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      weatherCode: json['weatherCode'] as int,
      morningTemperature: (json['morningTemperature'] as num).toDouble(),
      noonTemperature: (json['noonTemperature'] as num).toDouble(),
      nightTemperature: (json['nightTemperature'] as num).toDouble(),
      maxTemperature: (json['maxTemperature'] as num).toDouble(),
      yesterdayTemperature: (json['yesterdayTemperature'] as num).toDouble(),
      tomorrowTemperature: (json['tomorrowTemperature'] as num).toDouble(),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'weatherCode': instance.weatherCode,
      'morningTemperature': instance.morningTemperature,
      'noonTemperature': instance.noonTemperature,
      'nightTemperature': instance.nightTemperature,
      'maxTemperature': instance.maxTemperature,
      'yesterdayTemperature': instance.yesterdayTemperature,
      'tomorrowTemperature': instance.tomorrowTemperature,
    };
