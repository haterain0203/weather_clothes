import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_clothes/feature/weather/weather_repository.dart';

final temperatureRepoProvider = Provider((ref) => TemperatureRepository());

final temperatureProvider = FutureProvider((ref) async {
  final temperatureRepo = ref.read(temperatureRepoProvider);
  //TODO 固定値
  return temperatureRepo.getTemperature(35.75, 139.87);
});
