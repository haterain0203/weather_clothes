import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'component/address_part.dart';
import 'component/clothes_container.dart';
import 'component/compare_yesterday_part.dart';
import 'component/forecast_part.dart';
import 'component/rounded_corner_container.dart';
import 'component/weather_info_part.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TODO レイアウト的に数字のみフォントを大きくする予定
        title: Text(
          _setDateStr(DateTime.now()),
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              //TODO 押下処理
            },
            icon: const Icon(Icons.settings),
          ),
          IconButton(
            onPressed: () {
              //TODO 押下処理
            },
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            RoundedCornerContainer(
              padding: const EdgeInsets.all(8.0),
              // color: Colors.grey.shade200,
              child: Column(
                children: const [
                  //AddressArea
                  AddressPart(),
                  //天気情報部分
                  WeatherInfoPart(),
                  //昨日と比べて部分
                  CompareYesterdayPart(),
                ],
              ),
            ),
            //ClothesArea
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 300.0,
                  viewportFraction: 0.65,
                  enlargeCenterPage: true,
                  //TODO
                  // initialPage: _setInitialPage(today),
                  initialPage: 0,
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
                            width: 16.0,
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
                          const Text("℃"),
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
            ),
            Row(
              children: const [
                ForecastPart(),
                SizedBox(
                  width: 16.0,
                ),
                ForecastPart(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _setDateStr(DateTime today) {
    final dateFormat = DateFormat('M/d');
    final strDate = dateFormat.format(today);
    final dateFormatDayOfWeek = DateFormat.E('ja');
    final strDayOfWeek = dateFormatDayOfWeek.format(today);
    return "$strDate($strDayOfWeek)";
  }

  String _selectClothImageUrl(int temp) {
    const baseURL = "assets/images/";
    if (temp >= 30) return "${baseURL}t-shirt.png";
    if (temp >= 25 && temp < 30) return "${baseURL}shirt.png";
    if (temp >= 20 && temp < 25) return "${baseURL}long_shirt.png";
    if (temp >= 16 && temp < 20) return "${baseURL}cardigan.png";
    if (temp >= 12 && temp < 16) return "${baseURL}sweater.png";
    if (temp >= 8 && temp < 12) return "${baseURL}trench_coat.png";
    if (temp >= 5 && temp < 8) return "${baseURL}coat.png";
    return "${baseURL}down_coat.png";
  }
}
