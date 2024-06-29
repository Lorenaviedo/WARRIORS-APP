import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/interface/DetailScreen.dart';
import 'package:flutter_warrior_app/models/Warrior.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';

class ListsWarrior extends StatefulWidget {
  const ListsWarrior({super.key});

  @override
  State<StatefulWidget> createState() => ListsWarriorState();
}

class ListsWarriorState extends State<ListsWarrior> {
  List<WarriorList> warriorList = WarriorList.warriorList();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true, // move the card when you touched
        itemCount: warriorList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 180,
            decoration: BoxDecoration(
              color: GlobalColors.darkColor,
              border: Border.all(color: GlobalColors.primaryColor),
              borderRadius: BorderRadius.circular(6)
            ),
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4)
              ),
              child: Image(
                image: NetworkImage(warriorList[index].imgNetwork),
              ),
            ),
            title: Text(
              warriorList[index].name, // Reemplaza esto con el título principal real
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
              style: Theme.of(context).textTheme.labelLarge?.copyWith(color: GlobalColors.lightColor),
            ),
            subtitle: Text(
              warriorList[index].warriorType, 
              overflow: TextOverflow.ellipsis, 
              maxLines: 1, 
              style: Theme.of(context).textTheme.labelMedium?.copyWith(color: GlobalColors.lightColor),
            ),
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                    imgUrl: warriorList[index].imgNetwork.replaceFirst('assets/', ''),
                    waName: warriorList[index].name,
                    waType: warriorList[index].warriorType,
                    waPower: warriorList[index].power,
                    waCat: warriorList[index].levelCat,
                    waDes: warriorList[index].warriorDes,
                  )
                )
              );
            },
          ));
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(height: 8,);
        },

        );
  }
}
