// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Address _$$_AddressFromJson(Map<String, dynamic> json) => _$_Address(
      prefecture: json['address1'] as String,
      city: json['address2'] as String,
      town: json['address3'] as String,
      zipcode: json['zipcode'] as String,
    );

Map<String, dynamic> _$$_AddressToJson(_$_Address instance) =>
    <String, dynamic>{
      'address1': instance.prefecture,
      'address2': instance.city,
      'address3': instance.town,
      'zipcode': instance.zipcode,
    };
