import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';
import 'package:flutter_warrior_app/widgets/listsviews/WarriorList.dart';

class WarriorListScreen extends StatelessWidget {
  const WarriorListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100.0), // Ajusta la altura según tus necesidades
        child: AppBar(
          automaticallyImplyLeading: false,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Image.asset(
              'assets/images/logo.png',
              width: 180, // Ajusta el tamaño según tus necesidades
              height: 50,
            ),
          ),
          backgroundColor: GlobalColors.darkColor,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListsWarrior(),
      )
    );
  }
}