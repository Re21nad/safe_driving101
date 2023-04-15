import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/exam/question1.dart';
// import 'package:safe_driving_101/assets/exam/questions1.dart';
//import 'package:myapp/page-1/result11.dart';
//import 'package:myapp/page-1/testquestions.dart';
//import 'package:myapp/utils.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Test()));
}

class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff), // change to your desired color
        centerTitle: true,
        elevation: 0.0,

        title: Text(
          'Test',
          textAlign: TextAlign.center,
          style: GoogleFonts.domine(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.7000000834,
            color: Color(0xff000000),
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            // Add the desired functionality when the back button is pressed
          },
        ),
      ),
      body: SingleChildScrollView(

        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(right: 20,left: 30),
          height: 700,

          child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 120,),
                Container(
                  // testdescriptionw2g (1:104)
                  margin:
                  EdgeInsets.fromLTRB(0 , 0 , 156 , 0 ),
                  child: Text(
                    'Test Description:',
                    style: GoogleFonts.domine(
                      fontSize: 18,

                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.4800000572,
                      color: Color(0xff000000),
                    ),
                  ),
                ),

                SizedBox(height: 50,),

                Container(
                  // thistestconsistsof15questionsi (1:106)
                  // margin:
                  // EdgeInsets.fromLTRB(27 * fem, 0 * fem, 0 * fem, 269 * fem),
                  width: double.infinity,
                  child: Text(
                    'This is an adaptive test that will help measures your general understanding of the theoretical lessons. The test will consist of 20 to 25 questions that will be curated to your level. After you finish the test you will be given the result of (Beginner, Intermediate, Expert) for each lesson, these results will then be used to create your own recommended lesson path.',
                    style: GoogleFonts.rokkitt(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      height: 1.1375,
                      letterSpacing: -0.4800000572,
                      color: Color(0xff000000),
                    ),
                  ),
                ),

                SizedBox(height: 120,),
                Container(
                  // readytostart3E8 (1:108)
                  //margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 6 * fem, 23 * fem),
                  child: Text(
                    'Ready to Start?',
                    style: GoogleFonts.domine(

                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      height: 1.14,
                      letterSpacing: -0.4800000572,
                      color: Color(0xff000000),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                Container(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(

                    child: Text(
                      'Start',
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
                        borderRadius: BorderRadius.circular(20), // Adjust border radius as per your need
                      ),
                      primary: Color(0xfc161853), // Set the background color of the button
                    ),
                    onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => testQuestions1()),
                            );
                    },
                  ),
                ),


          ]
        ),
      ),
    ),
    );
  }
}


