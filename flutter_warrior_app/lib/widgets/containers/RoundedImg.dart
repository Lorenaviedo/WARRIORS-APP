import 'package:flutter/material.dart';

class WRoundedImg extends StatelessWidget {
  const WRoundedImg({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.widht,
    this.height,
    this.applyImageRadius = true,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    //this.backgroundColor = Colors.lightBlue,
    this.isNetworkImage = false,
    this.borderRadius = 10,
  });

  final double? widht, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  // final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: widht,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border,
          // color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider, 
          ),
        ),
      ),
    );
  }
}