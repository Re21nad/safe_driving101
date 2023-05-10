import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Driving2 extends StatelessWidget {
  const Driving2({Key? key}) : super(key: key);

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
                'Driving in fog',
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
                'Turn on the vehicle lights',
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
                'Driving at a speed less than the permitted limit on the road',
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
                'Use wipers and decondensate',
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
                'It is better to park the car outside of the road, away from traffic, in the event of poor visibility and inability to operate a vehicle.',
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
                'Leave enough distance to avoid overtaking other vehicles',
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
                'Use your car\'s lights to turn',
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
                'Do not stop on a highway or a busy road',
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
