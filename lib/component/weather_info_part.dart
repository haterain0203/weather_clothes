import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../feature/weather/weather.dart';

class WeatherInfoPart extends StatelessWidget {
  const WeatherInfoPart({
    required this.weather,
    super.key,
  });
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            CachedNetworkImage(
              imageUrl:
                  'http://openweathermap.org/img/wn/${weather.weatherData.icon}.png',
            ),
            Text(weather.weatherData.description),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.black,
              fontSize: 13.sp,
            ),
            children: [
              const TextSpan(text: '最高：'),
              TextSpan(
                text: weather.temperature.maxTemperature.toString(),
                style: TextStyle(
                  fontSize: 24.sp,
                  color: const Color(0xFFF78611),
                ),
              ),
              const TextSpan(
                text: '℃',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
