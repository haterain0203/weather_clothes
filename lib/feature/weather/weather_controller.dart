import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_clothes/feature/weather/weather_repository.dart';

final weatherRepoProvider = Provider((ref) => WeatherRepository());

final temperatureProvider = FutureProvider((ref) async {
  final weatherRepo = ref.read(weatherRepoProvider);
  //TODO 固定値
  return weatherRepo.getWeather(35.75, 139.87, '125-0054');
});
