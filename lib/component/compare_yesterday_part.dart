import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_clothes/feature/weather/weather_controller.dart';

import 'home_data_text.dart';

class CompareYesterdayPart extends HookConsumerWidget {
  const CompareYesterdayPart({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final temperature = ref.watch(
      weatherProvider.select(
        (asyncWeather) =>
            asyncWeather.whenData((weather) => weather.temperature),
      ),
    );
    return temperature.when(
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
        error: (error, stack) {
          return Center(
            child: Text('天気情報取得時にエラーが発生しました: $error'),
          );
        },
        data: (data) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const HomeDataText(
                text: '昨日と比べて：',
              ),
              const SizedBox(
                width: 16,
              ),
              HomeDataText(
                text: _compareTemperature(
                  todayTemp: data.maxTemperature,
                  yesterdayTemp: data.yesterdayTemperature,
                ),
              ),
            ],
          );
        });
  }

  String _compareTemperature(
      {required double todayTemp, required double yesterdayTemp}) {
    final differenceTemp = todayTemp - yesterdayTemp;
    if (differenceTemp >= 5) {
      return 'かなりあったかい';
    }
    if (differenceTemp >= 3) {
      return '結構あったかい';
    }
    if (differenceTemp >= 2) {
      return 'ちょっとあったかい';
    }
    if (differenceTemp >= -1) {
      return '大体同じ';
    }
    if (differenceTemp >= -3) {
      return 'ちょっと寒い';
    }
    if (differenceTemp >= -5) {
      return '結構寒い';
    }
    if (differenceTemp > -6) {
      return 'かなり寒い';
    }
    return '';
  }
}
