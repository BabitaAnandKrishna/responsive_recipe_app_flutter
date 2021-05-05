import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/cupertino.dart';

import 'CircularAvtar.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF533929),
      child: ListView(
        children: [
          VxBox(
            child: Column(
              children: [
                CirularAvtar().p4(),
                "Kitchen Pad".text.color(Colors.white).xl2.bold.make(),
                Divider(color: Colors.white).w(context.screenWidth*0.5),
                MaterialButton(
                    onPressed: () {},
                    child: ListTile(
                      leading: Icon(CupertinoIcons.home,color: Colors.white,),
                    title: Text("Home",style: TextStyle(color: Colors.white),),
                    )
                ),
                MaterialButton(
                    onPressed: () {},
                    child: ListTile(
                      leading: Icon(CupertinoIcons.person_2_fill,color: Colors.white,),
                      title: Text("About Us",style: TextStyle(color: Colors.white),),
                    )
                ),
                MaterialButton(
                    onPressed: () {},
                    child: ListTile(
                      leading: Icon(CupertinoIcons.settings,color: Colors.white,),
                      title: Text("Settings",style: TextStyle(color: Colors.white),),
                    )
                ),
                MaterialButton(
                    onPressed: () {},
                    child: ListTile(
                      leading: Icon(CupertinoIcons.mail,color: Colors.white,),
                      title: Text("Contact Us",style: TextStyle(color: Colors.white),),
                    )
                ),
              ],
            )
          ).make(),
        ],
      ),
    );
  }
}
