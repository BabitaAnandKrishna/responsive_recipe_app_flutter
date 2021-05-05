import 'package:flutter/material.dart';
import 'package:responsive_recipe_app_flutter/widget/home/preparationtime.dart';
import 'package:responsive_recipe_app_flutter/widget/home/starRatingPage.dart';
import 'package:velocity_x/velocity_x.dart';

class Content2 extends StatefulWidget {
  @override
  _Content2State createState() => _Content2State();
}

class _Content2State extends State<Content2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          scrollDirection:context.isMobile?Axis.vertical:Axis.horizontal,
          physics: context.isMobile?NeverScrollableScrollPhysics():null,
          shrinkWrap: true,
          itemCount: 6,
          itemBuilder: (context,index){
            return Card(
              elevation: 4,
              child: VxBox(
                child: VxDevice(
                  mobile:  Row(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network("https://www.thecuriouschickpea.com/wp-content/uploads/2018/03/malaikofta-4-720x720.jpg",
                            fit: BoxFit.cover,)),
                      10 .widthBox,
                      Column(
                        children: [
                          Text("Name of the Recipe"),
                          StartRatingPage(),
                          PreparationTime().p4(),
                        ],
                      ).p4(),

                    ],
                  ).h(90),
                  web: VxBox(
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network("https://www.thecuriouschickpea.com/wp-content/uploads/2018/03/malaikofta-4-720x720.jpg",

                            fit: BoxFit.cover,)),
                        5.heightBox,
                        Column(
                          children: [
                            Text("Name of the Recipe"),
                            StartRatingPage(),
                            PreparationTime().pLTRB(0, 0, 15, 0)
                          ],
                        ),
                      ],
                    ),
                  ).height(82).width(200).make(),
                ),
              ).p8.make(),
            );
          }),
    );
  }
}
