import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_clothes/component/forecast_part.dart';
import 'package:weather_clothes/component/today_clothes_part.dart';

import 'component/address_part.dart';
import 'component/compare_yesterday_part.dart';
import 'component/rounded_corner_container.dart';
import 'component/weather_info_part.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            RoundedCornerContainer(
              padding: const EdgeInsets.all(8),
              // color: Colors.grey.shade200,
              child: Column(
                children: const [
                  //AddressArea
                  AddressPart(),
                  SizedBox(height: 16),
                  //天気情報部分
                  WeatherInfoPart(),
                  SizedBox(height: 16),
                  //昨日と比べて部分
                  CompareYesterdayPart(),
                ],
              ),
            ),
            //ClothesArea
            const TodayClothesPart(),
            const ForecastPart(),
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
    return '$strDate($strDayOfWeek)';
  }
}
