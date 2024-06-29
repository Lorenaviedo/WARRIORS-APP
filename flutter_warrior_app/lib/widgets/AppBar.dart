import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';
import 'package:get/get.dart';

class WAppBar extends StatelessWidget {
  const WAppBar({super.key,
    this.actions,
    this.leadingIcon,
    this.leadingOnPressed,
    this.title,
    this.showBackArrow = false
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: showBackArrow
          ? IconButton(onPressed: () => Get.back(), icon: Icon(Icons.arrow_back, color: GlobalColors.lightColor,))
          : leadingIcon != null
            ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon))
            : null,
        title: title,
        actions: actions,
      ),
    );
  }
}
