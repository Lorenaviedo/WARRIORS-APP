import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';
import 'package:flutter_warrior_app/widgets/details/GameScenarios.dart';
import 'package:flutter_warrior_app/widgets/details/WarriorTitleText.dart';

class DetailInfoWarrior extends StatelessWidget {
  const DetailInfoWarrior({
    super.key,
    required this.waName1,
    required this.waPower1,
    required this.waType1,
    required this.waCat1,
    required this.waDes1
  });

  final String waName1, waType1, waPower1, waDes1, waCat1;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          WarriorTitleText(title: waName1, smallSize: true,), // WARRIOR NAME
          const SizedBox(height: 8),
          Row(
            children: [
              const WarriorTitleText(title: 'Type of Warrior: ',), 
              const SizedBox(width: 4),
              Text(waType1, style: Theme.of(context).textTheme.titleMedium?.copyWith(color: GlobalColors.lightColor)), // WARRIOR TYPE
              const SizedBox(width: 4,),
              Icon(Icons.verified, color: GlobalColors.primaryColor, size: 14,),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              const WarriorTitleText(title: 'Power: ',), 
              const SizedBox(width: 4),
              Text(
                waPower1, 
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(color: GlobalColors.lightColor)), // WARRIOR TYPE
            ],
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              const WarriorTitleText(title: 'Level: ',),
              const SizedBox(width: 4),
              Text('Medium - $waCat1', style: Theme.of(context).textTheme.titleMedium?.copyWith(color: GlobalColors.lightColor)),
            ],
          ),
          const SizedBox(height: 10),
          const HintAndLivePoints(),
          const SizedBox(height: 20),
          Text('Worlds & Maps', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: GlobalColors.lightColor)),
          const SizedBox(height: 10),
          GameScenarios(),
    
          // Description 
          const SizedBox(height: 20),
          Text('Warrior description', style: Theme.of(context).textTheme.titleLarge?.copyWith(color: GlobalColors.lightColor)),
          const SizedBox(height: 10),
          Column(
            children: [
              Text(
                waDes1, 
                style: Theme.of(context).textTheme.labelMedium?.copyWith(color: GlobalColors.lightColor)
              ),
              const SizedBox(height: 6),
              Text(
                'Led the Muslim military campaign against the Crusader states in the Levant, Led the Muslim military campaign against the Crusader states in the Levant, Led the Muslim military campaign against the Crusader states in the Levant.', 
                style: Theme.of(context).textTheme.labelMedium?.copyWith(color: GlobalColors.lightColor)
              ),
              const SizedBox(height: 6),
              Text(
                'Important:', 
                style: Theme.of(context).textTheme.labelLarge?.copyWith(color: GlobalColors.lightColor)
              ),
              Text(
                'Led the Muslim military campaign against the Crusader states in the Levant, Led the Muslim military campaign against the Crusader states in the Levant, Led the Muslim military campaign against the Crusader states in the Levant.', 
                style: Theme.of(context).textTheme.labelMedium?.copyWith(color: GlobalColors.lightColor)
              ),
            ],
          ),
    
        ],
      );
  }
}

class HintAndLivePoints extends StatelessWidget {
  const HintAndLivePoints({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const WarriorTitleText(title: 'Hint: ',),
            const SizedBox(width: 4),
            const WarriorTitleText(title: '75',),
            Icon(Icons.percent_rounded, size: 14, color: GlobalColors.lightColor,)
          ],
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            const WarriorTitleText(title: 'Live: ',),
            const SizedBox(width: 4),
            Icon(Icons.favorite_rounded, size: 14, color: GlobalColors.lightColor,),
            Icon(Icons.favorite_rounded, size: 14, color: GlobalColors.lightColor,),
            Icon(Icons.favorite_rounded, size: 14, color: GlobalColors.lightColor,),
            Icon(Icons.favorite_rounded, size: 14, color: GlobalColors.lightColor,),
            Icon(Icons.favorite_outline_rounded, size: 14, color: GlobalColors.lightColor,)
          ],
        ),
      ],
    );
  }
}