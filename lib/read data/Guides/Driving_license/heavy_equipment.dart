import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heavy_Equ_License extends StatelessWidget {
  const Heavy_Equ_License({Key? key}) : super(key: key);

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
                'Heavy Equipement License',
                style: GoogleFonts.domine(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                //textAlign: TextAlign.center, // Centering the text within the container
              ),

              Text(
                'It is given to people whose employment need them to have a license to operate heavy machinery like bulldozers.',
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
                      '1- (4) solar photos 4 x 6',
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
                      '2- Corporal from an official side',
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
                      '3- For non-citizens identification from the employer certified',
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
                      '4- That the profession, upon obtaining the license, be one of the professions that entitles to lead this category',
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
                      '5- Pay the prescribed fees',
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
