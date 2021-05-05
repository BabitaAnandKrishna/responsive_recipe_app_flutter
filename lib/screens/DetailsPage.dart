import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_recipe_app_flutter/widget/home/CircularAvtar.dart';
import 'package:responsive_recipe_app_flutter/widget/home/Content2.dart';
import 'package:responsive_recipe_app_flutter/widget/home/MenuPage.dart';
import 'package:responsive_recipe_app_flutter/widget/home/MobileHeading.dart';
import 'package:responsive_recipe_app_flutter/widget/home/Search.dart';
import 'package:responsive_recipe_app_flutter/widget/home/Slider.dart';
import 'package:responsive_recipe_app_flutter/widget/home/WebHeading.dart';
import 'package:responsive_recipe_app_flutter/widget/home/starRatingPage.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF533929),
        title:
        // context.isMobile
        //     ? HeadingWidget()
        //        :WebHeading(),
        VxDevice(
          mobile:  VxBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // widget.data.text.size(13).makeCentered(),
                    "Recipe Details".text.xl2.makeCentered(),
                  ],
                ).p(90),
                CirularAvtar(),
              ],
            ),
          ).make(),
          web:  VxBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CirularAvtar(),
                Row(
                  children: [
                    "Recipe Details".text.xl2.make(),
                  ],
                ),
                SearchBar(),
              ],
            ),
          ).width(context.screenWidth).make(),
        ),
      ),
      drawer: context.isMobile
          ? Drawer(
        child: DrawerMenu(),
      )
          : null,
        body: SingleChildScrollView(
          child: Column(
            children: [
              VxDevice(
                mobile: Column(
                  children: [
                    VxBox(
                        child: Image.network(
                          "https://as1.ftcdn.net/jpg/02/04/06/68/500_F_204066823_4KIY87yqpbIiWG6sH1WCrcXJo5Z5CyA6.jpg",
                          height: context.screenHeight*0.4,
                          width: context.screenWidth,
                          fit: BoxFit.cover,
                        )).make(),
                    20.heightBox,
                    StartRatingPage(),
                    15.heightBox,
                    Text("Recipe Name").text.xl4.make(),
                    20.heightBox,
                    VxBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ingredients:").text.xl2.bold.black.make(),

                              ],
                            ),
                            15.widthBox,
                            VxBox( child: VerticalDivider(color: Colors.brown,thickness: 1,)).height(context.screenHeight*0.3).padding(EdgeInsets.only(top: 40)).make(),
                            15.widthBox,
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Method:").text.xl2.bold.black.make(),
                              ],
                            ),
                          ],
                        )).width(context.screenWidth).makeCentered(),
                  ],
                ),
                web:
                Column(
                  children: [
                    VxBox(
                        child: Image.network(
                          "https://as1.ftcdn.net/jpg/02/04/06/68/500_F_204066823_4KIY87yqpbIiWG6sH1WCrcXJo5Z5CyA6.jpg",
                          height: context.screenHeight*0.4,
                          width: context.screenWidth,
                          fit: BoxFit.cover,
                        )).make(),
                    20.heightBox,
                    StartRatingPage(),
                    15.heightBox,
                    Text("Recipe Name").text.xl4.make(),
                    20.heightBox,
                    VxBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ingredients:").text.xl2.bold.black.make(),
                          ],
                        ),
                        15.widthBox,
                        VxBox( child: VerticalDivider(color: Colors.brown,thickness: 1,)).height(context.screenHeight*0.3).padding(EdgeInsets.only(top: 40)).make(),
                        15.widthBox,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Method:").text.xl2.bold.black.make(),
                          ],
                        ),
                      ],
                    )).width(context.screenWidth).makeCentered(),

                  ],
                ),
              ).scrollVertical(),
            ],
          ),
        )
   );



      // SafeArea(
      //   bottom: false,
      //   child: Column(
      //     children: [
      //       Hero(
      //         tag: Key(catalog.id.toString()),
      //         child: Image.network(catalog.image),
      //       ).h32(context),
      //       Expanded(
      //         child: VxArc(
      //           height: 30.0,
      //           arcType: VxArcType.CONVEY,
      //           edge: VxEdge.TOP,
      //           child: Container(
      //             color: Colors.white,
      //             width: context.screenWidth,
      //             child: Column(
      //               children: [
      //                 catalog.name.text.xl4
      //                     .color(MyTheme.darkBluishColor)
      //                     .bold
      //                     .make(),
      //                 catalog.desc.text
      //                     .textStyle(context.captionStyle)
      //                     .xl
      //                     .make(),
      //                 10.heightBox,
      //                 "All fraternal spirits follow each other, only special teachers have a uniqueness."
      //                     .text
      //                     .textStyle(context.captionStyle)
      //                     .make().p16()
      //
      //               ],
      //             ).py64(),
      //           ),
      //         ),
      //       ),
      //     ],
      //   )),
  }
}


