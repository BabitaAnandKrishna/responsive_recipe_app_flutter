import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_recipe_app_flutter/widget/home/Content2.dart';
import 'package:responsive_recipe_app_flutter/widget/home/ContentPage.dart';
import 'package:responsive_recipe_app_flutter/widget/home/MenuPage.dart';
import 'package:responsive_recipe_app_flutter/widget/home/MobileHeading.dart';
import 'package:responsive_recipe_app_flutter/widget/home/RecommendedPage.dart';
import 'package:responsive_recipe_app_flutter/widget/home/Search.dart';
import 'package:responsive_recipe_app_flutter/widget/home/Slider.dart';
import 'package:responsive_recipe_app_flutter/widget/home/WebHeading.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isUploaded = false;
  @override
  void initState(){
    super.initState();
    upload();
  }
  Future upload() async{
    //WidgetsFlutterBinding.ensureInitialized();
    //Initialize Firebase
    await Firebase.initializeApp();

    //upload document to firestore

    final refUser = FirebaseFirestore.instance.collection("user").doc();
    await refUser.set({'username': 'Babita'});

    //Upload file to firebase storage -- web not suppoted yet

    // if(!kIsWeb) {
    //   final response = await http.get(Uri.https(
    //       "https://www.inspiredtaste.net/wp-content/uploads/2020/07/Bean-Salad-Recipe-2-1200.jpg",
    //       "Recipe"));
    //   final imageBytes = response.bodyBytes;
    //
    //   final refImage = FirebaseStorage().ref().child("images/example.jpg");
    //   final uploadTask = await refImage.putData(imageBytes);
    //   await uploadTask.onComplete;
    // }

    setState(() {
      isUploaded = true;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF533929),
        title:
        // context.isMobile
        //     ? HeadingWidget()
        //        :WebHeading(),
        VxDevice(
          mobile: HeadingWidget(),
          web:  WebHeading() ,
        ),
      ),
      drawer: context.isMobile
          ? Drawer(
              child: DrawerMenu(),
            )
          : null,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(isUploaded ? "Uploaded!" : "Uploading...", style: TextStyle(fontSize: 24),
            // ),
            SliderPage().h(context.isMobile ? 350 : 400).w(context.screenWidth),
            VxBox(
                child: context.isMobile? SearchBar():null
            ).makeCentered(),
            VxBox(child: "Recommended".text.xl.bold.make()).p4.make(),
            ContentPage(),
            10.heightBox,
            VxBox(child: "Recipe of the weeK".text.xl.bold.make()).p4.make(),
            Content2().h(context.isMobile?context.screenHeight:context.screenHeight*0.3),
          ],
        ).scrollVertical(),
      ),
    );
  }
}
