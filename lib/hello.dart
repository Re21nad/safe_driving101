import 'package:flutter/material.dart';
import 'package:safe_driving101/hello1.dart';
import 'package:safe_driving101/introduction_screen.dart';

//import 'dart:ui';
//import 'package:flutter/src/widgets/media_query.dart';

// void main() {
//   runApp(Hello());
// }

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {

  @override
  void initState(){
    super.initState();
    _navigation();
  }

  _navigation() async{
    await Future.delayed(Duration(microseconds: 2500),(){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Introduction()));
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Image(
            image: AssetImage('images/safe-driving101-1-fLh.png'),
          ),
        ),
      ),
    );
  }
}
