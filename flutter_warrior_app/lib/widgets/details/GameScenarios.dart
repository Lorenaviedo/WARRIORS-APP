import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';
import 'package:flutter_warrior_app/widgets/containers/RoundedImg.dart';

class GameScenarios extends StatelessWidget {
  final List<String> imagePaths = const [
      'images/game1.png',
      'images/game2.jpg',
      'images/game3.jpg',
      'images/game4.jpg',
      'images/game5.jpg',
      'images/game1.png',
      'images/game2.jpg',
      'images/game3.jpg',
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
        separatorBuilder: (_, __) => const SizedBox(width: 8,), 
        itemCount:imagePaths.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        itemBuilder: (_, index) => 
          WRoundedImg(
            widht: 80,
            border: Border.all(color: GlobalColors.primaryColor),
            padding: const EdgeInsets.all(10.0),
            imageUrl: imagePaths[index]
          ),
      ),
    );
  }
}
