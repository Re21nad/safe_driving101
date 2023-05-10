import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/Guides/Guide1/transmissions.dart';

class Padels extends StatelessWidget {
  const Padels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Tools using in the car',
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 23),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),

              Text(
                'Padels using in the car',
                style: GoogleFonts.domine(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),
              SizedBox(height: 15,),

              Text(
                'There are pedals in each type of vehicle, and the two most significant types are as follows:',
                style: GoogleFonts.rokkitt(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),
              SizedBox(height: 25,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      height: 90,
                      margin: EdgeInsets.symmetric(vertical: 60),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(1, 3),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Text(
                        'Automatic transmission',
                        style: GoogleFonts.rokkitt(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.35,
                          color: Colors.black, // Changing the text color to white for better visibility
                        ),
                        textAlign: TextAlign.center, // Centering the text within the container
                      ),
                    ),

                    SizedBox(width: 20,),
                    Text(
                      'There are just two \npedals in it: the brake \npedal on the left, \nwhich is used to halt \nthe car and increase \nits speed, and the \nfuel pedal on the \nright, which is used \nto move the car and \nincrease its speed.',
                      style: GoogleFonts.rokkitt(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.35,
                        color: Colors.black, // Changing the text color to white for better visibility
                      ),
                      textAlign: TextAlign.left, // Centering the text within the container
                    ),
                  ],
                ),
              ),

              SizedBox(height: 30,),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 130,
                      height: 90,
                      margin: EdgeInsets.symmetric(vertical: 60),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[100],
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x3f000000),
                            offset: Offset(1, 3),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                      child: Text(
                        'Manual transmission',
                        style: GoogleFonts.rokkitt(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          height: 1.35,
                          color: Colors.black, // Changing the text color to white for better visibility
                        ),
                        textAlign: TextAlign.center, // Centering the text within the container
                      ),
                    ),

                    SizedBox(width: 20,),
                    Text(
                      'It has three pedals: \nthe fuel pedal on the \nright, the brake pedal \non the left, and the \nbrake pedal at the \nvery end. The brake \npedal\'s task is to get \nthe transmission \nready to change \ngears.',
                      style: GoogleFonts.rokkitt(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 1.35,
                        color: Colors.black, // Changing the text color to white for better visibility
                      ),
                      textAlign: TextAlign.left, // Centering the text within the container
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20,),
              Center(
                child: Container(
                  width: 320,
                  height: 50,
                  child: ElevatedButton(
                    child: Text(
                      'Next',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rokkitt(
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        height: 1.1375,
                        color: Color(0xffffffff),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            20), // Adjust border radius as per your need
                      ),
                      primary:
                      Color(0xfc161853), // Set the background color of the button
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Transmissions()),);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
