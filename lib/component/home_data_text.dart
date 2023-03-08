import 'package:flutter/material.dart';

class HomeDataText extends StatelessWidget {
  const HomeDataText({
    required this.text,
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 12,
      ),
    );
  }
}
