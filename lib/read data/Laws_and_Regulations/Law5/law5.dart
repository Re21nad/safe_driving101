import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Law5 extends StatefulWidget {
  const Law5({Key? key}) : super(key: key);

  @override
  State<Law5> createState() => _Law5State();
}

class _Law5State extends State<Law5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Rules of the Road',
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: 20,),
                Center(
                  child: Text(
                    'Article 50',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Text(
                  'Establishment of shopping centers and the like requires the approval of the competent authority, and the Regulations shall set necessary procedures in coordination with relevant agencies.',
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
                  child: Text(
                    'Article 51',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Text(
                  'Road markings, reflectors, and signs annexed to this Law shall be deemed an integral part thereof and drivers shall comply therewith as well as with instructions issued by the competent authorities in accordance with the provisions of this Law and its Regulations.',
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
                  child: Text(
                    'Article 52',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Text(
                  'Road markings, reflectors, and signs may not be destroyed, tampered with,moved, or disposed of in a way that would make them less visible or interfere with the internationally agreed upon meaning thereof.',
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
                  child: Text(
                    'Article 53',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Text(
                  'Driving shall be on the right side of the road.',
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
                  child: Text(
                    'Article 54',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                Text(
                  'Priority shall be given to on duty emergency vehicles and official motorcades,provided that drivers of said vehicles observe the safety of others.',
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
                  child: Text(
                    'Article 55',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  'Pedestrians may only use designated areas as specified by the Regulations.',
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
                  child: Text(
                    'Article 56',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  'School buses stopping for embarking and disembarking passengers may not be overtaken, subject to the conditions set by the Regulations.',
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
                  child: Text(
                    'Article 57',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  'While a vehicle is in motion, drivers and passengers must wear seat belts and children must be seated in child seats.',
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
                  child: Text(
                    'Article 58',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.domine(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.7000000834,
                      color: Color(0xFFEC255A),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  'Any person riding a motorcycle must wear a helmet at all times, subject to the conditions set by the Regulations.',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rokkitt(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    height: 1.14,
                    letterSpacing: -0.7000000834,
                    color: Color(0xff000000),
                  ),
                ),

                SizedBox(height: 20,),
              ],
            ),

          )),

    );
  }
}
