import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';

class WarriorTitleText extends StatelessWidget {
  const WarriorTitleText({super.key,
    required this.title,
    this.smallSize = false,
    this.maxLines = 2,
    this.textAlign = TextAlign.left,
  });

  final String title;
  final bool smallSize;
  final int maxLines;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: smallSize? Theme.of(context).textTheme.titleLarge?.copyWith(color: GlobalColors.lightColor) : Theme.of(context).textTheme.titleSmall?.copyWith(color: GlobalColors.lightColor),
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}