import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Traffic extends StatefulWidget {
  const Traffic({Key? key}) : super(key: key);

  @override
  State<Traffic> createState() => _TrafficState();
}

class _TrafficState extends State<Traffic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Traffic Infraction',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 19,
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
      ),
      backgroundColor: Colors.white,
      body: ,
    );
  }
}
