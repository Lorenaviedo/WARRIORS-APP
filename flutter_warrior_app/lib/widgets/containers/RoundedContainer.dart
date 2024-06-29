import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.margin,
    this.backgroundColor,
    this.borderColor,
    this.radius = 6,
    this.child,
  });

  final double? width;
  final double? height;
  final double radius;
  final Color? borderColor;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: GlobalColors.darkColor,
        border: Border.all(
          color: GlobalColors.primaryColor,
          width: 1
        )
      ),
      child: child,
    );
  }
}