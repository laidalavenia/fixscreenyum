// import 'package:flutter/material.dart';
//
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text("Splash Screen"),
//         ),
//         body: Center(
//           child: Text("Homepage"),
//         ));
//   }
// }

import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    return Scaffold(
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body: Center(
        child: Text("Homepage"),
      ),
    );
  }
}
