import 'package:flutter/material.dart';

import 'home_data_text.dart';
// import 'home_data_text.dart';

class AddressPart extends StatelessWidget {
  const AddressPart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return //TODO 設定画面で入力された郵便番号と住所を取得して表示
        Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        // HomeDataText(
        //   text: "〒${homePageData.address.results[0].zipcode}",
        //   // text: "〒000-0000",
        // ),
        SizedBox(
          width: 16.0,
        ),
        HomeDataText(
          // text: homePageData.address.results[0].prefecture +
          //     homePageData.address.results[0].city,
          text: "東京都xx区",
        ),
      ],
    );
  }
}
