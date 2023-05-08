import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Automatic extends StatelessWidget {
  const Automatic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Automatic Transmission',
          textAlign: TextAlign.left,
          style: GoogleFonts.domine(
            fontSize: 18,
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
          margin: EdgeInsets.symmetric(horizontal: 23, vertical: 100),
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26),
            color: Colors.indigo,
          ),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),


                Text(
                  'Automatic Transmission',
                  style: GoogleFonts.domine(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.center, // Centering the text within the container
                ),

                SizedBox(height: 20,),

                Text(
                  'To start the vehicle with the automatic transmission, you must follow these steps',
                  style: GoogleFonts.rokkitt(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left, // Centering the text within the container
                ),

                SizedBox(height: 15,),

                Text(
                  '- Make sure the transmission is in position P or N.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left, // Centering the text within the container
                ),

                SizedBox(height: 15,),
                Text(
                  '- Put your foot on the brake pedal and start the engine.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left, // Centering the text within the container
                ),

                SizedBox(height: 15,),
                Text(
                  '- Put the transmission into position D.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left, // Centering the text within the container
                ),

                SizedBox(height: 15,),
                Text(
                  '- Release the parking brake.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left, // Centering the text within the container
                ),

                SizedBox(height: 15,),
                Text(
                  '- Release your foot from the brake pedal, then gently depress the accelerator pedal.',
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.35,
                    color: Colors.white, // Changing the text color to white for better visibility
                  ),
                  textAlign: TextAlign.left, // Centering the text within the container
                ),

                SizedBox(height: 30,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
