// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'period_temperature.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeriodTemperature _$PeriodTemperatureFromJson(Map<String, dynamic> json) {
  return _PeriodTemperature.fromJson(json);
}

/// @nodoc
mixin _$PeriodTemperature {
  double get morningTemperature => throw _privateConstructorUsedError;
  double get noonTemperature => throw _privateConstructorUsedError;
  double get nightTemperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodTemperatureCopyWith<PeriodTemperature> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodTemperatureCopyWith<$Res> {
  factory $PeriodTemperatureCopyWith(
          PeriodTemperature value, $Res Function(PeriodTemperature) then) =
      _$PeriodTemperatureCopyWithImpl<$Res, PeriodTemperature>;
  @useResult
  $Res call(
      {double morningTemperature,
      double noonTemperature,
      double nightTemperature});
}

/// @nodoc
class _$PeriodTemperatureCopyWithImpl<$Res, $Val extends PeriodTemperature>
    implements $PeriodTemperatureCopyWith<$Res> {
  _$PeriodTemperatureCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeriodTemperatureCopyWith<$Res>
    implements $PeriodTemperatureCopyWith<$Res> {
  factory _$$_PeriodTemperatureCopyWith(_$_PeriodTemperature value,
          $Res Function(_$_PeriodTemperature) then) =
      __$$_PeriodTemperatureCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double morningTemperature,
      double noonTemperature,
      double nightTemperature});
}

/// @nodoc
class __$$_PeriodTemperatureCopyWithImpl<$Res>
    extends _$PeriodTemperatureCopyWithImpl<$Res, _$_PeriodTemperature>
    implements _$$_PeriodTemperatureCopyWith<$Res> {
  __$$_PeriodTemperatureCopyWithImpl(
      _$_PeriodTemperature _value, $Res Function(_$_PeriodTemperature) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? morningTemperature = null,
    Object? noonTemperature = null,
    Object? nightTemperature = null,
  }) {
    return _then(_$_PeriodTemperature(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PeriodTemperature implements _PeriodTemperature {
  const _$_PeriodTemperature(
      {required this.morningTemperature,
      required this.noonTemperature,
      required this.nightTemperature});

  factory _$_PeriodTemperature.fromJson(Map<String, dynamic> json) =>
      _$$_PeriodTemperatureFromJson(json);

  @override
  final double morningTemperature;
  @override
  final double noonTemperature;
  @override
  final double nightTemperature;

  @override
  String toString() {
    return 'PeriodTemperature(morningTemperature: $morningTemperature, noonTemperature: $noonTemperature, nightTemperature: $nightTemperature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PeriodTemperature &&
            (identical(other.morningTemperature, morningTemperature) ||
                other.morningTemperature == morningTemperature) &&
            (identical(other.noonTemperature, noonTemperature) ||
                other.noonTemperature == noonTemperature) &&
            (identical(other.nightTemperature, nightTemperature) ||
                other.nightTemperature == nightTemperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, morningTemperature, noonTemperature, nightTemperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeriodTemperatureCopyWith<_$_PeriodTemperature> get copyWith =>
      __$$_PeriodTemperatureCopyWithImpl<_$_PeriodTemperature>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeriodTemperatureToJson(
      this,
    );
  }
}

abstract class _PeriodTemperature implements PeriodTemperature {
  const factory _PeriodTemperature(
      {required final double morningTemperature,
      required final double noonTemperature,
      required final double nightTemperature}) = _$_PeriodTemperature;

  factory _PeriodTemperature.fromJson(Map<String, dynamic> json) =
      _$_PeriodTemperature.fromJson;

  @override
  double get morningTemperature;
  @override
  double get noonTemperature;
  @override
  double get nightTemperature;
  @override
  @JsonKey(ignore: true)
  _$$_PeriodTemperatureCopyWith<_$_PeriodTemperature> get copyWith =>
      throw _privateConstructorUsedError;
}
