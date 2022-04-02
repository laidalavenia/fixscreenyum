import 'dart:async';

import 'package:flutter/material.dart';

import 'home_page.dart';
import 'package:from_css_color/from_css_color.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreen createState() => _SplashScreen();
}

class _SplashScreen extends State<SplashScreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 5);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orange,
      body: Container(
        child: Image.asset("assets/images/logoapk.png"),
        width: double.infinity,
        height: double.infinity,
        color: Color(0xFF8A00),

        // color: Colors.orange,
        // color: Color(0xFF8A00),
      ),
      // child: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     new Image(
      //       image: AssetImage("assets/images/logoapk.png"),
      //     )
      //   ],
    );
  }

// int hexcolor(String color) {
//   String newColor = '0xff' + color;
//
//   newColor = newColor.replaceAll('#', '');
//
//   int finalColor = int.parse(newColor);
//   return finalColor;
// }
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: double.infinity,
//         height: double.infinity,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             begin: Alignment.topRight,
//             end: Alignment.bottomRight,
//             colors: [
//               Color(0xFFFF8A00),
//               Color(0xFFFFDD00),
//             ],
//           ),
//         ),
//         child: Column(
//           children: [
//             new Image(
//                 image: AssetImage("assets/images/logoapk.png"),
//                 height: 500.0,
//                 width: 600.0,
//                 ),
//           ],
//         ),
//       ),
//     );
// //   }
// }
