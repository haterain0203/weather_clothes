// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Weather _$$_WeatherFromJson(Map<String, dynamic> json) => _$_Weather(
      temperature:
          Temperature.fromJson(json['temperature'] as Map<String, dynamic>),
      weatherData:
          WeatherData.fromJson(json['weatherData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_WeatherToJson(_$_Weather instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'weatherData': instance.weatherData,
    };
