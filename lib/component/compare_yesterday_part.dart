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
    // HomePage時点でweatherProviderの値を所得済み（エラーの場合はエラーハンドリング）のため、ここでは「！」
    // このWidgetでは、Weatherクラスのうち、temperatureしか使用しないため「.select」
    final temperature = ref.watch(
      weatherProvider.select(
        (asyncWeather) => asyncWeather.value!.temperature,
      ),
    );
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
            todayTemp: temperature.maxTemperature,
            yesterdayTemp: temperature.yesterdayTemperature,
          ),
        ),
      ],
    );
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
    if (differenceTemp < -6) {
      return 'かなり寒い';
    }
    return '';
  }
}
