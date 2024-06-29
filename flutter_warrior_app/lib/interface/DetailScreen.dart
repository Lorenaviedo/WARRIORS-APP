import 'package:flutter/material.dart';
import 'package:flutter_warrior_app/utils/GlobalColors.dart';
import 'package:flutter_warrior_app/widgets/AppBar.dart';
import 'package:flutter_warrior_app/widgets/details/CurvedEdgeWidget.dart';
import 'package:flutter_warrior_app/widgets/details/DetailWarriorInfo.dart';
import 'package:flutter_warrior_app/widgets/details/RatingShare.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, 
    required this.imgUrl,
    required this.waName,
    required this.waType,
    required this.waPower,
    required this.waCat,
    required this.waDes
  });

  final String imgUrl, waName, waType, waPower, waDes, waCat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: GlobalColors.darkColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            ImgDetailContainer(imgUrl2: imgUrl),
              Padding(
                padding: const EdgeInsets.only(right: 24.0, left: 24.0, bottom: 24.0),
                child: Column(
                  children: [
                    // Rating 
                    const RatingAndShare(),
                    const SizedBox(height: 8),
                    DetailInfoWarrior(waName1: waName, waType1: waType, waPower1: waPower, waCat1: waCat, waDes1: waDes,),
                    // Reviews
                  ],
                ),
              )
          ],
        ),
      ),
      )
    );
  }
}





class ImgDetailContainer extends StatelessWidget {
  const ImgDetailContainer({
    super.key,
    required this.imgUrl2
  });

  final String imgUrl2;

  @override
  Widget build(BuildContext context) {
    return WCurvedEdgeWidget(
      child: Container(
        color: GlobalColors.darkColor,
        child:  Stack(
          children: [
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgUrl2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            // APP bar Icons
            const WAppBar(
              showBackArrow: true,
            )
          ],
        ),
      ),
    );
  }
}
