import 'package:flutter/material.dart';

class RoundedCornerContainer extends StatelessWidget {
  const RoundedCornerContainer({
    this.onTap,
    this.height,
    this.width,
    this.color,
    this.padding,
    this.child,
    super.key,
  });

  final VoidCallback? onTap;
  final double? height;
  final double? width;
  final Color? color;
  final EdgeInsets? padding;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        //height指定がない場合は160.0
        height: height,
        //width指定がない場合は画面横幅いっぱい
        width: width ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          //color指定がない場合はホワイト
          color: color ?? Colors.white,
        ),
        padding: padding,
        child: child,
      ),
    );
  }
}
