import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_clothes/feature/address/address_controller.dart';

import 'home_data_text.dart';

class AddressPart extends HookConsumerWidget {
  const AddressPart({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final address = ref.watch(addressProvider('1250054'));
    return address.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) {
        print('error = $error');
        return Center(child: Text('住所取得時にエラーが発生しました: $error'));
      },
      data: (address) {
        //TODO 設定画面で入力された郵便番号と住所を取得して表示
        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeDataText(
              text: '〒${address.zipcode}',
            ),
            const SizedBox(
              width: 16,
            ),
            HomeDataText(
              text: address.prefecture + address.city,
            ),
          ],
        );
      },
    );
  }
}
