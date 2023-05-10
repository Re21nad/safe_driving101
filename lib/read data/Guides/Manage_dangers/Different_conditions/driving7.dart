import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Driving7 extends StatelessWidget {
  const Driving7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 23),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Text(
                'Driving in heavy traffic',
                textAlign: TextAlign.left,
                style: GoogleFonts.domine(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 20,),

              Text(
                'Take responsibility in the traffic',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Pay special attention to what\'s behind you, consider how the traffic is moving, and avoid walking up behind or right in front of a car.',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Mastering the basic skills of controlling the vehicle and avoiding unnecessary changes in lanes',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Avoid curiosity and curiosity',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Eliminate distractions',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 10,),
              Text(
                'Vehicle meter monitoring (temperature meter - petrol meter)',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
