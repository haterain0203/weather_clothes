import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_clothes/component/rounded_corner_container.dart';

import 'clothes_container.dart';

class TodayClothesPart extends HookConsumerWidget {
  const TodayClothesPart({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
          // final timeStr = _setTimeString(i);
          // final maxTemp = _selectMaxTemperature(data, i);
          //TODO 固定値
          final clothImageUrl = _selectClothImageUrl(25);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    //TODO
                    i.toString(),
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Text(
                    //TODO
                    i.toString(),
                    // maxTemp.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      color: Color(0xFFF78611),
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
  }

  String _selectClothImageUrl(int temp) {
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
}
