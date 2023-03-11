import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:weather_clothes/feature/weather/weather_controller.dart';

class WeatherInfoPart extends HookConsumerWidget {
  const WeatherInfoPart({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(weatherProvider);
    return weather.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stack) {
        print('error = $error');
        return Center(
          child: Text('天気情報取得時にエラーが発生しました: $error'),
        );
      },
      data: (data) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                CachedNetworkImage(
                  //TODO 固定値修正
                  imageUrl:
                      'http://openweathermap.org/img/wn/${data.weatherData.icon}.png',
                ),
                Text(data.weatherData.description),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 13.sp,
                ),
                children: [
                  const TextSpan(text: '最高：'),
                  TextSpan(
                    text: data.temperature.maxTemperature.toString(),
                    // text: homePageData.openMeteo.daily.apparentTemperatureMax[1]
                    //     .toInt()
                    //     .toString(),
                    style: TextStyle(
                      fontSize: 24.sp,
                      color: const Color(0xFFF78611),
                    ),
                  ),
                  const TextSpan(
                    text: '℃',
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  // FaIcon setWeatherIcon(int weatherCode) {
  //   if (weatherCode == 0) {
  //     return const FaIcon(
  //       FontAwesomeIcons.sun,
  //       color: Colors.orange,
  //     );
  //   }
  //   if(weatherCode >=1 && weatherCode <= 3) {
  //     return const FaIcon(FontAwesomeIcons.cloudSun);
  //   }
  //   if(weatherCode  )
  //
  // }
}
