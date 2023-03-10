import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_clothes/component/rounded_corner_container.dart';

import '../constant/constant.dart';
import 'clothes_container.dart';

class YesterdayOrTomorrowContainer extends StatelessWidget {
  const YesterdayOrTomorrowContainer({
    required this.date,
    required this.temperature,
    super.key,
  });
  final DateTime date;
  final double temperature;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RoundedCornerContainer(
        color: Colors.white,
        child: Column(
          children: [
            RoundedCornerContainer(
              color: Constant.mainColor,
              child: Center(
                child: Text(
                  _setDateStr(date),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            //天気情報部分
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.sp,
                ),
                children: [
                  const TextSpan(text: '最高：'),
                  TextSpan(
                    text: temperature.toString(),
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: const Color(0xFFF78611),
                    ),
                  ),
                  const TextSpan(
                    text: '℃',
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16),
              child: ClothesContainer(
                //TODO 固定値
                clothImageUrl: 'assets/images/t-shirt.png',
              ),
            ),
          ],
        ),
      ),
    );
  }

  //TODO 共通化した方が良さそう
  String _setDateStr(DateTime today) {
    final dateFormat = DateFormat('M/d');
    final strDate = dateFormat.format(today);
    final dateFormatDayOfWeek = DateFormat.E('ja');
    final strDayOfWeek = dateFormatDayOfWeek.format(today);
    return '$strDate($strDayOfWeek)';
  }
}
