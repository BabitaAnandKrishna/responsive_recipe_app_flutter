import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart'; 

class StartRatingPage extends StatefulWidget {
  @override
  _StartRatingPageState createState() => _StartRatingPageState();
}

class _StartRatingPageState extends State<StartRatingPage> {
  var rating = 3.0;
  @override
  Widget build(BuildContext context) {
    return Center(
            child: SmoothStarRating(
              rating: rating,
              isReadOnly: false,
              size: 8,
              filledIconData: Icons.star,
              halfFilledIconData: Icons.star_half,
              defaultIconData: Icons.star_border,
              starCount: 5,
              allowHalfRating: true,
              spacing: 2.0,
              onRated: (value) {
                print("rating value -> $value");
                // print("rating value dd -> ${value.truncate()}");
              },
            ),
    );
  }
}
