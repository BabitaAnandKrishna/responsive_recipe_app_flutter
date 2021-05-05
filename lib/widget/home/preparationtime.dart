import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';

class PreparationTime extends StatefulWidget {
  @override
  _PreparationTimeState createState() => _PreparationTimeState();
}

class _PreparationTimeState extends State<PreparationTime> {
  @override
  Widget build(BuildContext context) {
    return                     Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(CupertinoIcons.timer,size: context.isMobile?12:15,),
                Text("32 min").text.maxFontSize(context.isMobile?12:15).make(),
              ],
            ),
            context.isMobile?20.widthBox:40.widthBox,
            Row(
              children: [
                Icon(CupertinoIcons.person,size: context.isMobile?12:15,),
                Text("2 People").text.maxFontSize(context.isMobile?12:15).make(),
              ],
            ),
          ],
        ).h(18).pLTRB(30, 0,0, 0),
        VxBox(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.local_fire_department,size: context.isMobile?12:15,),
              Text("23 Calories").text.maxFontSize(context.isMobile?12:15).make(),
            ],
          ).h(18). pLTRB(30, 0,65, 0),
        ).make()
      ],
    );
  }
}
