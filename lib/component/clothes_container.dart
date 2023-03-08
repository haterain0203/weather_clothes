import 'package:flutter/material.dart';

class ClothesContainer extends StatelessWidget {
  const ClothesContainer({
    required this.clothImageUrl,
    Key? key,
  }) : super(key: key);

  final String clothImageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xFF003569).withOpacity(0.1),
      ),
      child: Image.asset(
        clothImageUrl,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
