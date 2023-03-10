import 'package:weather_clothes/feature/weather/temperature_repository.dart';
import 'package:weather_clothes/feature/weather/weather.dart';
import 'package:weather_clothes/feature/weather/weather_data_repository.dart';

class WeatherRepository {
  Future<Weather> setWeather(double lat, double lon, String zipCode) async {
    final temperature = await TemperatureRepository().getTemperature(lat, lon);
    final weatherData =
        await WeatherDataRepository().getWeatherDescAndIcon(zipCode);
    return Weather(
      temperature: temperature,
      weatherData: weatherData,
    );
  }
}
