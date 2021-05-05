import 'package:flutter/material.dart';
import 'package:responsive_recipe_app_flutter/screens/DetailsPage.dart';
import 'package:responsive_recipe_app_flutter/widget/home/preparationtime.dart';
import 'package:responsive_recipe_app_flutter/widget/home/starRatingPage.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';

class LatestRecipe extends StatefulWidget {
  @override
  _LatestRecipeState createState() => _LatestRecipeState();
}

class _LatestRecipeState extends State<LatestRecipe> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        //shrinkWrap: true,
        itemCount: 6,
        scrollDirection: context.isMobile ? Axis.horizontal : Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: context.isMobile ? 1 : 4),
        itemBuilder: (context, index) {
          return VxBox(
            child: Card(
              elevation: 4,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> DetailsPage()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                          "https://image.freepik.com/free-photo/tortilla-wrap-with-falafel-fresh-salad-vegan-tacos-vegetarian-healthy-food_2829-14394.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text("Paneer").text.make(),
                   // context.isMobile?null:18.heightBox,
                    StartRatingPage(),
                    PreparationTime(),
                  ]
                ),
              ),
            )
          ).make();
        });
  }
}
