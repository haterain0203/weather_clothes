import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_clothes/component/rounded_corner_container.dart';
import 'package:weather_clothes/feature/weather/temperature.dart';
import 'package:weather_clothes/feature/weather/weather_controller.dart';

import '../constant/constant.dart';
import 'clothes_container.dart';

class TodayClothesPart extends HookConsumerWidget {
  const TodayClothesPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final temperature = ref.watch(
      weatherProvider.select(
        (asyncWeather) => asyncWeather.value!.temperature,
      ),
    );
    return Expanded(
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 2),
          height: 300,
          viewportFraction: 0.65,
          enlargeCenterPage: true,
          initialPage: 1,
        ),
        items: [
          0,
          1,
          2,
        ].map((i) {
          final periodStr = _setPeriodString(i);
          final periodTemperature = _selectTemperature(temperature, i);
          final clothImageUrl = _selectClothImageUrl(periodTemperature);
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
                    periodTemperature.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      color: Constant.accentColor,
                    ),
                  ),
                  const Text('???'),
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
  }

  String _selectClothImageUrl(double temp) {
    const baseURL = 'assets/images/';
    if (temp >= 30) {
      return '${baseURL}t-shirt.png';
    }
    if (temp >= 25) {
      return '${baseURL}shirt.png';
    }
    if (temp >= 20) {
      return '${baseURL}long_shirt.png';
    }
    if (temp >= 16) {
      return '${baseURL}cardigan.png';
    }
    if (temp >= 12) {
      return '${baseURL}sweater.png';
    }
    if (temp >= 8) {
      return '${baseURL}trench_coat.png';
    }
    if (temp >= 5) {
      return '${baseURL}coat.png';
    }
    return '${baseURL}down_coat.png';
  }

  String _setPeriodString(int index) {
    if (index == 0) {
      return '???(7:00)';
    }
    if (index == 1) {
      return '???(12:00)';
    }
    return '???(19:00)';
  }

  double _selectTemperature(Temperature data, int index) {
    if (index == 0) {
      return data.morningTemperature;
    }
    if (index == 1) {
      return data.noonTemperature;
    }
    return data.nightTemperature;
  }
}
