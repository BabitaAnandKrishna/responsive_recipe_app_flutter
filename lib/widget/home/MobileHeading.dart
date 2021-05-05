import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'CircularAvtar.dart';

class HeadingWidget extends StatefulWidget {
  // String data ;
  // HeadingWidget(String data);
  @override
  _HeadingWidgetState createState() => _HeadingWidgetState();
}

class _HeadingWidgetState extends State<HeadingWidget> {
  @override
  Widget build(BuildContext context) {
    return
       VxBox(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                // widget.data.text.size(13).makeCentered(),
                 "Welcome to".text.size(13).makeCentered(),
                 "Kitchen Pad".text.makeCentered(),
               ],
             ).p(90),
             CirularAvtar(),
           ],
         ),
       ).make();

  }
}
