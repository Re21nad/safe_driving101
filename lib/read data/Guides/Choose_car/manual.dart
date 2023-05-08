import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Manual extends StatelessWidget {
  const Manual({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Manual Transmission',
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
          margin: EdgeInsets.symmetric(horizontal: 23),
          width: double.infinity,

          child: Column(
            children: [
              SizedBox(height: 40,),
              Text(
                'A manual transmission depends on the driver of the car because it necessitates frequent gear changes. While most manual transmissions have four gears, some contemporary car models also have six or seven gears.',
                style: GoogleFonts.rokkitt(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),

              SizedBox(height: 17,),
              Text(
                'The following steps must be taken in order to start the car with a manual transmission:',
                style: GoogleFonts.domine(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  height: 1.35,
                  color: Colors.black, // Changing the text color to white for better visibility
                ),
                textAlign: TextAlign.left, // Centering the text within the container
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(26),
                  color: Colors.grey[200],
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 40,),

                      Text(
                        '- Make sure the transmission is in neutral.',
                        style: GoogleFonts.rokkitt(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          color: Colors.black, // Changing the text color to white for better visibility
                        ),
                        textAlign: TextAlign.left, // Centering the text within the container
                      ),

                      SizedBox(height: 15,),
                      Text(
                        '- Turn on the engine',
                        style: GoogleFonts.rokkitt(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          color: Colors.black, // Changing the text color to white for better visibility
                        ),
                        textAlign: TextAlign.left, // Centering the text within the container
                      ),

                      SizedBox(height: 15,),
                      Text(
                        '- Depress the gearshift pedal (clutch) and put the transmission in the first position.',
                        style: GoogleFonts.rokkitt(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          color: Colors.black, // Changing the text color to white for better visibility
                        ),
                        textAlign: TextAlign.left, // Centering the text within the container
                      ),
                      SizedBox(height: 15,),
                      Text(
                        '- Release the parking brake',
                        style: GoogleFonts.rokkitt(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          color: Colors.black, // Changing the text color to white for better visibility
                        ),
                        textAlign: TextAlign.left, // Centering the text within the container
                      ),
                      SizedBox(height: 15,),
                      Text(
                        ' Release your foot from the transmission pedal while gently depressing the accelerator pedal at the same time and you will notice that the vehicle has started to move.',
                        style: GoogleFonts.rokkitt(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          color: Colors.black, // Changing the text color to white for better visibility
                        ),
                        textAlign: TextAlign.left, // Centering the text within the container
                      ),
                      SizedBox(height: 15,),
                      Text(
                        '- The foot must gradually lift from the accelerator pedal as well as press the transmission pedal as the vehicle\'s engine torque increases. Put the transmission in the second position after pushing the transmission pedal and removing your foot from the accelerator pedal.',
                        style: GoogleFonts.rokkitt(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          color: Colors.black, // Changing the text color to white for better visibility
                        ),
                        textAlign: TextAlign.left, // Centering the text within the container
                      ),
                      SizedBox(height: 15,),
                      Text(
                        '- The previous process is repeated when increasing the speed to put the transmission in the next number.',
                        style: GoogleFonts.rokkitt(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          color: Colors.black, // Changing the text color to white for better visibility
                        ),
                        textAlign: TextAlign.left, // Centering the text within the container
                      ),
                      SizedBox(height: 15,),
                      Text(
                        '- In the event that the speed is reduced, you must move the transmission to the lowest and appropriate number for it, while following the steps mentioned in the (6) previous procedure.',
                        style: GoogleFonts.rokkitt(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          height: 1.35,
                          color: Colors.black, // Changing the text color to white for better visibility
                        ),
                        textAlign: TextAlign.left, // Centering the text within the container
                      ),
                      SizedBox(height: 40,),

                    ],
                  ),
                ),
              )


            ],
          ),
        ),
      ),
    );
  }
}
