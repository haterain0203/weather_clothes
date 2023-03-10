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
    final weather = ref.watch(weatherProvider);
    return weather.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stack) {
        print('error = $error');
        return Center(
          child: Text('天気情報取得時にエラーが発生しました: $error'),
        );
      },
      data: (data) {
        return Row(
          children: [
            YesterdayOrTomorrowContainer(
              // 昨日の日付
              date: DateTime.now().subtract(const Duration(days: 1)),
              temperature: data.temperature.yesterdayTemperature,
            ),
            const SizedBox(
              width: 16,
            ),
            YesterdayOrTomorrowContainer(
              // 明日の日付
              date: DateTime.now().subtract(const Duration(days: -1)),
              temperature: data.temperature.tomorrowTemperature,
            ),
          ],
        );
      },
    );
  }
}
