// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Temperature _$TemperatureFromJson(Map<String, dynamic> json) {
  return _Temperature.fromJson(json);
}

/// @nodoc
mixin _$Temperature {
  double get morningTemperature => throw _privateConstructorUsedError;
  double get noonTemperature => throw _privateConstructorUsedError;
  double get nightTemperature => throw _privateConstructorUsedError;
  double get maxTemperature => throw _privateConstructorUsedError;
  double get yesterdayTemperature => throw _privateConstructorUsedError;
  double get tomorrowTemperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemperatureCopyWith<Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureCopyWith<$Res> {
  factory $TemperatureCopyWith(
          Temperature value, $Res Function(Temperature) then) =
      _$TemperatureCopyWithImpl<$Res, Temperature>;
  @useResult
  $Res call(
      {double morningTemperature,
      double noonTemperature,
      double nightTemperature,
      double maxTemperature,
      double yesterdayTemperature,
      double tomorrowTemperature});
}

/// @nodoc
class _$TemperatureCopyWithImpl<$Res, $Val extends Temperature>
    implements $TemperatureCopyWith<$Res> {
  _$TemperatureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? morningTemperature = null,
    Object? noonTemperature = null,
    Object? nightTemperature = null,
    Object? maxTemperature = null,
    Object? yesterdayTemperature = null,
    Object? tomorrowTemperature = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_TemperatureCopyWith<$Res>
    implements $TemperatureCopyWith<$Res> {
  factory _$$_TemperatureCopyWith(
          _$_Temperature value, $Res Function(_$_Temperature) then) =
      __$$_TemperatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double morningTemperature,
      double noonTemperature,
      double nightTemperature,
      double maxTemperature,
      double yesterdayTemperature,
      double tomorrowTemperature});
}

/// @nodoc
class __$$_TemperatureCopyWithImpl<$Res>
    extends _$TemperatureCopyWithImpl<$Res, _$_Temperature>
    implements _$$_TemperatureCopyWith<$Res> {
  __$$_TemperatureCopyWithImpl(
      _$_Temperature _value, $Res Function(_$_Temperature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? morningTemperature = null,
    Object? noonTemperature = null,
    Object? nightTemperature = null,
    Object? maxTemperature = null,
    Object? yesterdayTemperature = null,
    Object? tomorrowTemperature = null,
  }) {
    return _then(_$_Temperature(
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
class _$_Temperature implements _Temperature {
  const _$_Temperature(
      {required this.morningTemperature,
      required this.noonTemperature,
      required this.nightTemperature,
      required this.maxTemperature,
      required this.yesterdayTemperature,
      required this.tomorrowTemperature});

  factory _$_Temperature.fromJson(Map<String, dynamic> json) =>
      _$$_TemperatureFromJson(json);

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
    return 'Temperature(morningTemperature: $morningTemperature, noonTemperature: $noonTemperature, nightTemperature: $nightTemperature, maxTemperature: $maxTemperature, yesterdayTemperature: $yesterdayTemperature, tomorrowTemperature: $tomorrowTemperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Temperature &&
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
      morningTemperature,
      noonTemperature,
      nightTemperature,
      maxTemperature,
      yesterdayTemperature,
      tomorrowTemperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TemperatureCopyWith<_$_Temperature> get copyWith =>
      __$$_TemperatureCopyWithImpl<_$_Temperature>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemperatureToJson(
      this,
    );
  }
}

abstract class _Temperature implements Temperature {
  const factory _Temperature(
      {required final double morningTemperature,
      required final double noonTemperature,
      required final double nightTemperature,
      required final double maxTemperature,
      required final double yesterdayTemperature,
      required final double tomorrowTemperature}) = _$_Temperature;

  factory _Temperature.fromJson(Map<String, dynamic> json) =
      _$_Temperature.fromJson;

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
  _$$_TemperatureCopyWith<_$_Temperature> get copyWith =>
      throw _privateConstructorUsedError;
}
