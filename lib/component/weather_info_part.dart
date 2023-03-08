import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WeatherInfoPart extends StatelessWidget {
  const WeatherInfoPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 10.h,
          width: 10.h,
          child: CachedNetworkImage(
            //TODO 固定値修正
            imageUrl:
                "https://i0.wp.com/greenlifesupport.com/home/wp-content/uploads/2020/04/41-414567_simple-weather-icons-sunny-sunny-weather-icon-png.jpg?ssl=1",
            // imageUrl:
            //     "http://openweathermap.org/img/wn/${homePageData.openWeather.descAndIcon[0].icon}.png",
            fit: BoxFit.contain,
          ),
        ),
        const SizedBox(
          width: 20.0,
        ),
        RichText(
          text: TextSpan(
              style: TextStyle(
                color: Colors.black,
                fontSize: 13.sp,
              ),
              children: [
                const TextSpan(text: "最高："),
                TextSpan(
                  //TODO 固定値
                  text: "aaa",
                  // text: homePageData.openMeteo.daily.apparentTemperatureMax[1]
                  //     .toInt()
                  //     .toString(),
                  style: TextStyle(
                    fontSize: 24.sp,
                    color: const Color(0xFFF78611),
                  ),
                ),
                const TextSpan(
                  text: "℃",
                ),
              ]),
        ),
      ],
    );
  }
}
