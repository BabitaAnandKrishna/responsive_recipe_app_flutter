import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Align(
          alignment: context.isMobile?Alignment.centerLeft: Alignment.centerRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              "Find you Recipe".text.gray300.make(),
              Icon(Icons.search,color: context.isMobile?Colors.white:Color(0xFF533929),),
            ],
          ).p4(),
        )
    ).shadow2xl.width(context.isMobile?300:context.screenWidth*0.2).roundedLg.height(30).color(context.isMobile?Color(0xFF533929):Colors.white).make();
  }
}
