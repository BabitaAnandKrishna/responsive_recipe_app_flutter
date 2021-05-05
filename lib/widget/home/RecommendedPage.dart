import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:responsive_recipe_app_flutter/model/category_model.dart';
import 'package:responsive_recipe_app_flutter/screens/ListPage.dart';
import 'package:responsive_recipe_app_flutter/widget/home/CircularAvtar.dart';
import 'package:velocity_x/velocity_x.dart';

class RecommendedRecipe extends StatefulWidget {
  @override
  _RecommendedRecipeState createState() => _RecommendedRecipeState();
}

class _RecommendedRecipeState extends State<RecommendedRecipe> {
  final ref = FirebaseFirestore.instance.collection("category");
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: ref.snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasData) {
            List<Category> dataList = snapshot.data.docs
                .map((e) => Category.fromJson(e.data()))
                .toList();
            return ListView.builder(
                // physics: NeverScrollableScrollPhysics(),
                scrollDirection:
                    context.isMobile ? Axis.horizontal : Axis.vertical,
                shrinkWrap: true,
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  // print(dataList.length);
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => recipeList(
                                  catName: dataList[index].catName)));
                    },
                    child: Card(
                      elevation: 4,
                      child: VxBox(
                        //child: Center(child: "SubMenu".text.color(Colors.white).make()),
                        child: Center(
                            child: (dataList[index].catName)
                                .text
                                .color(Colors.white)
                                .make()),
                      )
                          .height(70)
                          .width(100)
                          .outerShadowLg
                          .roundedSM
                          .color(Color(0xFF7C3A2F))
                          .make()
                          .p4(),
                    ),
                  );
                });
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
