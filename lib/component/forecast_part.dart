import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_clothes/component/rounded_corner_container.dart';

import 'clothes_container.dart';

class ForecastPart extends StatelessWidget {
  const ForecastPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RoundedCornerContainer(
        color: Colors.white,
        child: Column(
          children: [
            RoundedCornerContainer(
              //TODO テーマカラーに
              color: const Color(0xFF003569),
              child: Center(
                child: Text(
                  //TODO 固定値
                  "aaa",
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            //天気情報部分
            //TODO OpenWeatherの天気アイコン追加したい
            RichText(
              text: TextSpan(
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.sp,
                  ),
                  children: [
                    const TextSpan(text: "最高："),
                    TextSpan(
                      //TODO 翌日の最高気温に修正
                      //TODO 固定値
                      text: "bbb",
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(0xFFF78611),
                      ),
                    ),
                    const TextSpan(
                      text: "℃",
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClothesContainer(
                //TODO 翌日の最高気温に
                //TODO 固定値
                clothImageUrl: "assets/images/t-shirt.png",
              ),
            ),
          ],
        ),
      ),
    );
  }
}