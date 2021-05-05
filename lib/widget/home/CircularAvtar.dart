import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CirularAvtar extends StatefulWidget {
  @override
  _CirularAvtarState createState() => _CirularAvtarState();
}

class _CirularAvtarState extends State<CirularAvtar> {
  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      backgroundColor: Colors.white,
      radius: 27,
      child: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(
            "https://www.maggi.co.uk/sites/default/files/styles/maggi_desktop_image_style/public/NUK1265%20maggi%20Recipes%20banner%201500x700px%20opt2A.jpg"),
      ),
    );
  }
}
