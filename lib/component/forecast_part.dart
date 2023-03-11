import 'package:flutter/material.dart';
import 'package:weather_clothes/component/yesterday_or_tomorrow_container.dart';

import '../feature/weather/weather.dart';

class ForecastPart extends StatelessWidget {
  const ForecastPart({
    required this.weather,
    super.key,
  });
  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        YesterdayOrTomorrowContainer(
          // 昨日の日付
          date: DateTime.now().subtract(const Duration(days: 1)),
          temperature: weather.temperature.yesterdayTemperature,
        ),
        const SizedBox(
          width: 16,
        ),
        YesterdayOrTomorrowContainer(
          // 明日の日付
          date: DateTime.now().subtract(const Duration(days: -1)),
          temperature: weather.temperature.tomorrowTemperature,
        ),
      ],
    );
  }
}
