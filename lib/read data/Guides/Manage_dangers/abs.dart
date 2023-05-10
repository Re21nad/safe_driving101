import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ABS extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Antilock Braking System (ABS)',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 15,
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
      body: SingleChildScrollView(
        child: Container(

          margin: EdgeInsets.symmetric(horizontal: 23),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),

              Text(
                'Antilock Braking System (ABS)',
                textAlign: TextAlign.left,
                style: GoogleFonts.domine(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 15,),
              Text(
                'It is one of the most recent safety and security innovations in the automotive industry. It stops the wheels of the car from swerving or skidding as the brake pedal is applied.',
                // textAlign: TextAlign.center,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 30,),
              Center(
                child: Image.asset(
                  'images/ABS ll.png',
                  width: 200,
                  height: 150,
                  fit: BoxFit.cover,
                  // alignment: Alignment.center,
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'How to operate a system with wheel lock while braking?',
                textAlign: TextAlign.left,
                style: GoogleFonts.domine(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),

              SizedBox(height: 15,),
              Text(
                'The driver of the vehicle must apply heavy, continuous pressure to the brake pedal in order to make an emergency stop while the ABS system is engaged.',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),

              Text(
                'The anti-lock braking system enhances vehicle control and shortens stopping distance, particularly on dry, slick roads; however, while preserving vehicle control, the distance may lengthen on other conditions, such as snow.',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),
              Text(
                'By breaking the braking process into numerous segments and pressing the brakes repeatedly in a short period of time, this technology experiments with preventing wheel lock-up.',
                textAlign: TextAlign.left,
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.14,
                  letterSpacing: -0.7000000834,
                  color: Color(0xff000000),
                ),
              ),
              SizedBox(height: 30,),
              Center(
                child: Image.asset(
                  'images/ABS.jpg',
                  width: 300,
                  height: 210,
                  fit: BoxFit.cover,
                  // alignment: Alignment.center,
                ),
              ),


              SizedBox(height: 35,),

            ],
          ),
        ),
      ),
    );
  }
}
