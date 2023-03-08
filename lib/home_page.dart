import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'component/rounded_corner_container.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              RoundedCornerContainer(
                padding: const EdgeInsets.all(8.0),
                // color: Colors.grey.shade200,
                child: Column(
                  children: [
                    // //AddressArea
                    // AddressPart(homePageData: data),
                    // //天気情報部分
                    // WeatherInfoPart(homePageData: data),
                    // //昨日と比べて部分
                    // CompareYesterdayPart(homePageData: data),
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
                      // initialPage: _setInitialPage(today),
                      initialPage: 0),
                  items: [
                    0,
                    1,
                    2,
                  ].map((i) {
                    // final timeStr = _setTimeString(i);
                    // final maxTemp = _selectMaxTemperature(data, i);
                    // final imageURL = _selectImageURL(maxTemp);
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "aaa",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(
                              width: 16.0,
                            ),
                            Text(
                              "bbb",
                              // maxTemp.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                color: const Color(0xFFF78611),
                              ),
                            ),
                            const Text("℃"),
                          ],
                        ),
                        RoundedCornerContainer(
                          color: Colors.white,
                          // child: ClothesContainer(
                          //   imageURL: imageURL,
                          // ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ),
              Row(
                children: [
                  // ForecastPart(
                  //   homePageData: data,
                  //   dateStr: _setDateStr(tomorrow),
                  //   //TODO 明日の最高気温に変更
                  //   imageUrl: _selectImageURL(
                  //       data.openMeteo.daily.apparentTemperatureMax[1].round()),
                  //   maxTemp: data.openMeteo.daily.apparentTemperatureMax[1]
                  //       .round()
                  //       .toString(),
                  // ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  // ForecastPart(
                  //   homePageData: data,
                  //   dateStr: _setDateStr(dayAfterTomorrow),
                  //   //TODO 明後日の最高気温に変更
                  //   imageUrl: _selectImageURL(
                  //       data.openMeteo.daily.apparentTemperatureMax[2].round()),
                  //   maxTemp: data.openMeteo.daily.apparentTemperatureMax[2]
                  //       .round()
                  //       .toString(),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
