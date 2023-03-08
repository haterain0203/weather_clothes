import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_clothes/feature/weather/period_temperature_repository.dart';

final periodTemperatureRepoProvider =
    Provider((ref) => PeriodTemperatureRepository());

final periodTemperatureProvider = FutureProvider((ref) {
  final periodTemperatureRepo = ref.read(periodTemperatureRepoProvider);
  //TODO 固定値
  return periodTemperatureRepo.getPeriodTemperature(35.75, 139.87);
});
