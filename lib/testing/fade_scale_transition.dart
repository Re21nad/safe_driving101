import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FadeScaleTransitionDemo extends StatefulWidget {
  const FadeScaleTransitionDemo({Key? key}) : super(key: key);

  @override
  State<FadeScaleTransitionDemo> createState() => _FadeScaleTransitionDemoState();
}

class _FadeScaleTransitionDemoState extends State<FadeScaleTransitionDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'FadeScaleTransition',
          textAlign: TextAlign.center,
          style: GoogleFonts.domine(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.7000000834,
            color: Color(0xff000000),
          ),
        ),

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),);
  }
}
// TODO Implement this library.