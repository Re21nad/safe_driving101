import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PublicLicense extends StatelessWidget {
  const PublicLicense({Key? key}) : super(key: key);

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
                'Public License',
                style: GoogleFonts.domine(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                //textAlign: TextAlign.center, // Centering the text within the container
              ),

              SizedBox(height: 15,),

              Text(
                'Those above the age of twenty are eligible for this license, which allows them to operate a variety of public vehicles, including taxis and passenger cars.',
                style: GoogleFonts.rokkitt(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),

              SizedBox(height: 30,),
              Center(
                child: Image.asset(
                  'images/taxis.jpg',
                  width: 300,
                  height: 170,
                  fit: BoxFit.cover,
                  // alignment: Alignment.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
