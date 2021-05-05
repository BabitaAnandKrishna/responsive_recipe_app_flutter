import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:responsive_recipe_app_flutter/model/recipe_model.dart';
import 'package:responsive_recipe_app_flutter/widget/home/CircularAvtar.dart';
import 'package:responsive_recipe_app_flutter/widget/home/MenuPage.dart';
import 'package:responsive_recipe_app_flutter/widget/home/Search.dart';
import 'package:velocity_x/velocity_x.dart';

import 'DetailsPage.dart';

class recipeList extends StatefulWidget {
  final String catName;
 recipeList({this.catName});

  @override
  _recipeListState createState() => _recipeListState();
}

class _recipeListState extends State<recipeList> {
  final  ref = FirebaseFirestore.instance.collection("recipe");
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
          mobile: VxBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // widget.data.text.size(13).makeCentered(),
                    "Recipe Lists".text.xl2.makeCentered(),
                  ],
                ).p(90),
                CirularAvtar(),
              ],
            ),
          ).make(),
            web: VxBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CirularAvtar(),
                  Row(
                    children: [
                      "Recipe Lists".text.xl2.make(),
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
      body: StreamBuilder(
        stream: ref.where("catName",isEqualTo: widget.catName).snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            List<Recipe> dataList = snapshot.data.docs.map((e) => Recipe.fromJson(e.data()))
                .toList();
            return ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                scrollDirection:
                    context.isMobile ? Axis.horizontal : Axis.vertical,
                shrinkWrap: true,
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    child: VxBox(
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailsPage()));
                        },
                        child: Column(
                            children:[
                              (dataList[index].recipeName).text.color(Colors.white).make(),
                              Image.network(dataList[index].recipeImage,fit: BoxFit.cover,),
                            ]),
                      ),
                    ).height(70).width(100).outerShadowLg.roundedSM.color(Color(0xFF7C3A2F)).make().p4(),
                  );
                });
          } else {
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
