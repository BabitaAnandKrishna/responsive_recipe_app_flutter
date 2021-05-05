import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'CircularAvtar.dart';
import 'Search.dart';

class WebHeading extends StatefulWidget {
  @override
  _WebHeadingState createState() => _WebHeadingState();
}

class _WebHeadingState extends State<WebHeading> {
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CirularAvtar(),
          Row(
            children: [
              "Welcome to ".text.size(14).make(),
              "Kitchen Pad".text.xl4.make(),
            ],
          ),
          SearchBar(),
        ],
      ),
    ).width(context.screenWidth).make();
  }
}
