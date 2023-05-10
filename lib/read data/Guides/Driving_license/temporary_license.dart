import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TempoLicense extends StatelessWidget {
  const TempoLicense({Key? key}) : super(key: key);

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
                'Temporary License',
                style: GoogleFonts.domine(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                //textAlign: TextAlign.center, // Centering the text within the container
              ),

              Text(
                'This license is granted to those over 17 years of age.',
                style: GoogleFonts.rokkitt(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),
              Text(
                'There are important procedures to follow:',
                style: GoogleFonts.rokkitt(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),

              SizedBox(height: 20,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1- (6) solar photos 4 x 6',
                      style: GoogleFonts.rokkitt(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.35,
                        color: Colors.black, // Changing the text color to white for better visibility
                      ),
                      textAlign: TextAlign.left, // Centering the text within the container
                    ),

                    SizedBox(height: 15,),
                    Text(
                      '2- Medical examination',
                      style: GoogleFonts.rokkitt(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.35,
                        color: Colors.black, // Changing the text color to white for better visibility
                      ),
                      textAlign: TextAlign.left, // Centering the text within the container
                    ),
                    SizedBox(height: 15,),
                    Text(
                      '3- Attach a letter of parental or employer approval',
                      style: GoogleFonts.rokkitt(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.35,
                        color: Colors.black, // Changing the text color to white for better visibility
                      ),
                      textAlign: TextAlign.left, // Centering the text within the container
                    ),
                    SizedBox(height: 15,),
                    Text(
                      '4- A copy of the ID as follows:\n     - Citizens: a copy of the identity card\n     - Citizens of the Cooperation Council countries: a copy of the passport, and that three consecutive months have passed since he entered the Kingdom without travelling\n     - Residents: A copy of the residence permit',
                      style: GoogleFonts.rokkitt(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        height: 1.35,
                        color: Colors.black, // Changing the text color to white for better visibility
                      ),
                      textAlign: TextAlign.left, // Centering the text within the container
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
