// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return _Weather.fromJson(json);
}

/// @nodoc
mixin _$Weather {
  int get weatherCode => throw _privateConstructorUsedError;
  double get morningTemperature => throw _privateConstructorUsedError;
  double get noonTemperature => throw _privateConstructorUsedError;
  double get nightTemperature => throw _privateConstructorUsedError;
  double get maxTemperature => throw _privateConstructorUsedError;
  double get yesterdayTemperature => throw _privateConstructorUsedError;
  double get tomorrowTemperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeatherCopyWith<Weather> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherCopyWith<$Res> {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) then) =
      _$WeatherCopyWithImpl<$Res, Weather>;
  @useResult
  $Res call(
      {int weatherCode,
      double morningTemperature,
      double noonTemperature,
      double nightTemperature,
      double maxTemperature,
      double yesterdayTemperature,
      double tomorrowTemperature});
}

/// @nodoc
class _$WeatherCopyWithImpl<$Res, $Val extends Weather>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherCode = null,
    Object? morningTemperature = null,
    Object? noonTemperature = null,
    Object? nightTemperature = null,
    Object? maxTemperature = null,
    Object? yesterdayTemperature = null,
    Object? tomorrowTemperature = null,
  }) {
    return _then(_value.copyWith(
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      morningTemperature: null == morningTemperature
          ? _value.morningTemperature
          : morningTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      noonTemperature: null == noonTemperature
          ? _value.noonTemperature
          : noonTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      nightTemperature: null == nightTemperature
          ? _value.nightTemperature
          : nightTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      yesterdayTemperature: null == yesterdayTemperature
          ? _value.yesterdayTemperature
          : yesterdayTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      tomorrowTemperature: null == tomorrowTemperature
          ? _value.tomorrowTemperature
          : tomorrowTemperature // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$$_WeatherCopyWith(
          _$_Weather value, $Res Function(_$_Weather) then) =
      __$$_WeatherCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int weatherCode,
      double morningTemperature,
      double noonTemperature,
      double nightTemperature,
      double maxTemperature,
      double yesterdayTemperature,
      double tomorrowTemperature});
}

/// @nodoc
class __$$_WeatherCopyWithImpl<$Res>
    extends _$WeatherCopyWithImpl<$Res, _$_Weather>
    implements _$$_WeatherCopyWith<$Res> {
  __$$_WeatherCopyWithImpl(_$_Weather _value, $Res Function(_$_Weather) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherCode = null,
    Object? morningTemperature = null,
    Object? noonTemperature = null,
    Object? nightTemperature = null,
    Object? maxTemperature = null,
    Object? yesterdayTemperature = null,
    Object? tomorrowTemperature = null,
  }) {
    return _then(_$_Weather(
      weatherCode: null == weatherCode
          ? _value.weatherCode
          : weatherCode // ignore: cast_nullable_to_non_nullable
              as int,
      morningTemperature: null == morningTemperature
          ? _value.morningTemperature
          : morningTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      noonTemperature: null == noonTemperature
          ? _value.noonTemperature
          : noonTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      nightTemperature: null == nightTemperature
          ? _value.nightTemperature
          : nightTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      maxTemperature: null == maxTemperature
          ? _value.maxTemperature
          : maxTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      yesterdayTemperature: null == yesterdayTemperature
          ? _value.yesterdayTemperature
          : yesterdayTemperature // ignore: cast_nullable_to_non_nullable
              as double,
      tomorrowTemperature: null == tomorrowTemperature
          ? _value.tomorrowTemperature
          : tomorrowTemperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weather implements _Weather {
  const _$_Weather(
      {required this.weatherCode,
      required this.morningTemperature,
      required this.noonTemperature,
      required this.nightTemperature,
      required this.maxTemperature,
      required this.yesterdayTemperature,
      required this.tomorrowTemperature});

  factory _$_Weather.fromJson(Map<String, dynamic> json) =>
      _$$_WeatherFromJson(json);

  @override
  final int weatherCode;
  @override
  final double morningTemperature;
  @override
  final double noonTemperature;
  @override
  final double nightTemperature;
  @override
  final double maxTemperature;
  @override
  final double yesterdayTemperature;
  @override
  final double tomorrowTemperature;

  @override
  String toString() {
    return 'Weather(weatherCode: $weatherCode, morningTemperature: $morningTemperature, noonTemperature: $noonTemperature, nightTemperature: $nightTemperature, maxTemperature: $maxTemperature, yesterdayTemperature: $yesterdayTemperature, tomorrowTemperature: $tomorrowTemperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weather &&
            (identical(other.weatherCode, weatherCode) ||
                other.weatherCode == weatherCode) &&
            (identical(other.morningTemperature, morningTemperature) ||
                other.morningTemperature == morningTemperature) &&
            (identical(other.noonTemperature, noonTemperature) ||
                other.noonTemperature == noonTemperature) &&
            (identical(other.nightTemperature, nightTemperature) ||
                other.nightTemperature == nightTemperature) &&
            (identical(other.maxTemperature, maxTemperature) ||
                other.maxTemperature == maxTemperature) &&
            (identical(other.yesterdayTemperature, yesterdayTemperature) ||
                other.yesterdayTemperature == yesterdayTemperature) &&
            (identical(other.tomorrowTemperature, tomorrowTemperature) ||
                other.tomorrowTemperature == tomorrowTemperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      weatherCode,
      morningTemperature,
      noonTemperature,
      nightTemperature,
      maxTemperature,
      yesterdayTemperature,
      tomorrowTemperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      __$$_WeatherCopyWithImpl<_$_Weather>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeatherToJson(
      this,
    );
  }
}

abstract class _Weather implements Weather {
  const factory _Weather(
      {required final int weatherCode,
      required final double morningTemperature,
      required final double noonTemperature,
      required final double nightTemperature,
      required final double maxTemperature,
      required final double yesterdayTemperature,
      required final double tomorrowTemperature}) = _$_Weather;

  factory _Weather.fromJson(Map<String, dynamic> json) = _$_Weather.fromJson;

  @override
  int get weatherCode;
  @override
  double get morningTemperature;
  @override
  double get noonTemperature;
  @override
  double get nightTemperature;
  @override
  double get maxTemperature;
  @override
  double get yesterdayTemperature;
  @override
  double get tomorrowTemperature;
  @override
  @JsonKey(ignore: true)
  _$$_WeatherCopyWith<_$_Weather> get copyWith =>
      throw _privateConstructorUsedError;
}
