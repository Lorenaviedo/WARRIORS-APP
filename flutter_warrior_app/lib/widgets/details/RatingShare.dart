import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.star_rounded, color: Colors.amber, size: 24,),
            const SizedBox(width: 6),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '5.0 ', style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: GlobalColors.lightColor)),
                  TextSpan(text: '(900)', style: TextStyle(color: GlobalColors.lightColor) )
                ]
              )
            )
          ],
        ),
        IconButton(onPressed: (){}, icon: Icon(Icons.share_rounded, size: 24, color: GlobalColors.lightColor,))
      ],
    );
  }
}