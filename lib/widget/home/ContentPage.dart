import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'RecommendedPage.dart';
import 'latestRecipe.dart';

class ContentPage extends StatefulWidget {
  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return VxDevice(
      mobile: Column(
        children: [
          RecommendedRecipe().h(80),
          LatestRecipe().h(200),
        ],
      ),
      web: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RecommendedRecipe().h(400).w(250),
          10.widthBox,
          LatestRecipe().h(400).expand(),
        ],
      ).w(context.screenWidth).p4(),
    );
  }
}
