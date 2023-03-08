import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_clothes/component/rounded_corner_container.dart';
import 'package:weather_clothes/feature/weather/period_temperature.dart';
import 'package:weather_clothes/feature/weather/period_temperature_controller.dart';

import '../constant/constant.dart';
import 'clothes_container.dart';

class TodayClothesPart extends HookConsumerWidget {
  const TodayClothesPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final periodTemperature = ref.watch(periodTemperatureProvider);
    return periodTemperature.when(
      loading: () => const Expanded(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (error, stack) {
        print('error = $error');
        return Expanded(
          child: Center(
            child: Text('今日の時間別気温の取得時にエラーが発生しました: $error'),
          ),
        );
      },
      data: (data) {
        return Expanded(
          child: CarouselSlider(
            options: CarouselOptions(
              height: 300,
              viewportFraction: 0.65,
              enlargeCenterPage: true,
              //TODO
              // initialPage: _setInitialPage(today),
              initialPage: 1,
            ),
            items: [
              0,
              1,
              2,
            ].map((i) {
              final periodStr = _setPeriodString(i);
              final temperature = _selectTemperature(data, i);
              //TODO 固定値
              final clothImageUrl = _selectClothImageUrl(temperature);
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        periodStr,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      Text(
                        temperature.toString(),
                        // maxTemp.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                          color: Constant.accentColor,
                        ),
                      ),
                      const Text('℃'),
                    ],
                  ),
                  RoundedCornerContainer(
                    color: Colors.white,
                    child: ClothesContainer(clothImageUrl: clothImageUrl),
                  ),
                ],
              );
            }).toList(),
          ),
        );
      },
    );
  }

  String _selectClothImageUrl(double temp) {
    const baseURL = 'assets/images/';
    if (temp >= 30) {
      return '${baseURL}t-shirt.png';
    }
    if (temp >= 25 && temp < 30) {
      return '${baseURL}shirt.png';
    }
    if (temp >= 20 && temp < 25) {
      return '${baseURL}long_shirt.png';
    }
    if (temp >= 16 && temp < 20) {
      return '${baseURL}cardigan.png';
    }
    if (temp >= 12 && temp < 16) {
      return '${baseURL}sweater.png';
    }
    if (temp >= 8 && temp < 12) {
      return '${baseURL}trench_coat.png';
    }
    if (temp >= 5 && temp < 8) {
      return '${baseURL}coat.png';
    }
    return '${baseURL}down_coat.png';
  }

  String _setPeriodString(int index) {
    if (index == 0) {
      return '朝(7:00)';
    }
    if (index == 1) {
      return '昼(12:00)';
    }
    return '夜(19:00)';
  }

  double _selectTemperature(PeriodTemperature data, int index) {
    if (index == 0) {
      return data.morningTemperature;
    }
    if (index == 1) {
      return data.noonTemperature;
    }
    return data.nightTemperature;
  }
}
