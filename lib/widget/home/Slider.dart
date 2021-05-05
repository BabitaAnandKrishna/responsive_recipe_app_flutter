import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  @override
  Widget build(BuildContext context) {
    return VxSwiper(
      items: [
        VxBox(
          child: Image.network(
            "https://image.freepik.com/free-psd/cooking-recipes-banner-template_23-2148686677.jpg",
            height: context.isMobile?350:100,fit: BoxFit.cover,
          ),
        ).height(context.isMobile?350:400).width(context.screenWidth).make(),

        VxBox(
          child: Image.network(
            "https://i.pinimg.com/originals/ca/a9/64/caa9647eac746b499c501a62bbfc7487.png",
            height: context.isMobile?350:100,fit: BoxFit.cover,
          ),
        ).height(context.isMobile?350:400).width(context.screenWidth).make(),
        VxBox(
          child: Image.network(
            "https://image.freepik.com/free-photo/falafel-hummus-pita-middle-eastern-arabic-dishes-halal-food-top-view-banner_2829-14259.jpg",
            height: context.isMobile?350:100,fit: BoxFit.cover,
          ),
        ).height(context.isMobile?350:400).width(context.screenWidth).make(),
        VxBox(
          child: Image.network(
            "https://firstfinancialtest.files.wordpress.com/2018/12/cookbook.jpg",
            height: context.isMobile?350:100,fit: BoxFit.cover,
          ),
        ).height(context.isMobile?350:400).width(context.screenWidth).make(),
        VxBox(
          child: Image.network(
            "http://ihartnutrition.com/wp-content/uploads/2013/11/photoshoot-veggies.jpg",
            height: context.isMobile?350:100,fit: BoxFit.cover,
          ),
        ).height(context.isMobile?350:400).width(context.screenWidth).make(),
        VxBox(
          child: Image.network(
            "https://media.istockphoto.com/photos/assorted-indian-recipes-food-various-picture-id922783734?k=6&m=922783734&s=612x612&w=0&h=hljWwPRzq8Cc_PHbx693FPnQ_39yNqD4BUjtMbgASlM=",
            height: context.isMobile?350:100,fit: BoxFit.cover,
          ),
        ).height(context.isMobile?350:400).width(context.screenWidth).make(),
      ],
      viewportFraction: 1.0,
      autoPlay: true,
    );
  }
}
