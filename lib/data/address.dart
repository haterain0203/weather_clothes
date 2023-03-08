import 'package:freezed_annotation/freezed_annotation.dart';

part 'address.freezed.dart';
part 'address.g.dart';

@freezed
class Address with _$Address {
  const factory Address({
    @JsonKey(name: 'address1') required String prefecture,
    @JsonKey(name: 'address2') required String city,
    @JsonKey(name: 'address3') required String town,
    required String zipcode,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
