import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_clothes/component/yesterday_or_tomorrow_container.dart';
import 'package:weather_clothes/feature/weather/weather_controller.dart';

class ForecastPart extends HookConsumerWidget {
  const ForecastPart({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // HomePage時点でweatherProviderの値を所得済み（エラーの場合はエラーハンドリング）のため、ここでは「！」
    // このWidgetでは、Weatherクラスのうち、temperatureしか使用しないため「.select」
    final temperature = ref.watch(
      weatherProvider.select(
        (asyncWeather) => asyncWeather.value!.temperature,
      ),
    );
    return Row(
      children: [
        YesterdayOrTomorrowContainer(
          // 昨日の日付
          date: DateTime.now().subtract(const Duration(days: 1)),
          temperature: temperature.yesterdayTemperature,
        ),
        const SizedBox(
          width: 16,
        ),
        YesterdayOrTomorrowContainer(
          // 明日の日付
          date: DateTime.now().subtract(const Duration(days: -1)),
          temperature: temperature.tomorrowTemperature,
        ),
      ],
    );
  }
}
