import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_clothes/feature/address/address_repository.dart';

final addressRepoProvider = Provider((ref) => AddressRepository());

final addressProvider =
    FutureProvider.family.autoDispose((ref, String zipCode) {
  final addressRepo = ref.read(addressRepoProvider);
  return addressRepo.getAddress(zipCode);
});
