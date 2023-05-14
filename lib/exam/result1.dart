import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/exam/question1.dart';
import 'package:safe_driving101/read%20data/homePage.dart';

class Result1 extends StatefulWidget {
  const Result1({Key? key}) : super(key: key);

  @override
  State<Result1> createState() => _Result1State();
}

class _Result1State extends State<Result1> {

  final users = FirebaseAuth.instance.currentUser!;
  List<Color> colors = [];
  final CollectionReference usersCollection =
  FirebaseFirestore.instance.collection('Users');

  Future<void> updateLevels(List<String> results) async {
    try {
      final User? user = FirebaseAuth.instance.currentUser;
      final String? userEmail = user?.email;

      if (userEmail != null) {
        // Query the Firestore collection to find the document with matching email
        final QuerySnapshot snapshot = await usersCollection
            .where('email', isEqualTo: userEmail)
            .limit(1)
            .get();

        if (snapshot.size == 1) {
          final DocumentSnapshot document = snapshot.docs.first;

          // Update the 'levels' field in the document
          await document.reference.update({
            'levels': results,
          });

          print('Levels updated successfully');
        } else {
          print('User document not found');
        }
      } else {
        print('User email is null');
      }
    } catch (e) {
      print('Error updating levels: $e');
    }
  }



  @override
  Widget build(BuildContext context) {

    // Assuming you have the `results` list available here
    List<String> result = [results[0], results[1], results[2], results[3], results[4]];

    // Update levels in Firestore
    updateLevels(result);

    for (int i = 0; i < 5; i++) {
      if (results[i] == "Beginner") {
        colors.add(Color(0x33ff0000));
      } else if (results[i] == "Intermediate") {
        colors.add(Color(0xfffffbb1));
      } else {
        colors.add(Color(0xffc6ffbd));
      }
    }

    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,

        title: Text(
          'Score',
          textAlign: TextAlign.center,
          style: GoogleFonts.domine(
            fontSize: 25,
            fontWeight: FontWeight.w700,
            height: 1.14,
            letterSpacing: -0.7000000834,
            color: Color(0xff000000),
          ),
        ),

      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(right: 20, left: 20),
          height: 700,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Container(
                // group48gJt (23:138)
                height: 70,
                padding: EdgeInsets.only(left: 35, right: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff6f6f6),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),

                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'Lesson 1',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.domine(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.14,
                          letterSpacing: -0.4800000572,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 74),
                      width: 110,
                      height: 35,
                      decoration: BoxDecoration(
                        //color: Colors.tealAccent,
                        color: colors[0],
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            results[0],
                            //'Beginner',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.domine(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 1.14,
                              letterSpacing: -0.260000031,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                // group48gJt (23:138)
                height: 70,
                padding: EdgeInsets.only(left: 35, right: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff6f6f6),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),

                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'Lesson 2',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.domine(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.14,
                          letterSpacing: -0.4800000572,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      width: 110,
                      height: 35,
                      decoration: BoxDecoration(
                        //color: Colors.tealAccent,
                        color: colors[1],
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            results[1],
                            //'Beginner',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.domine(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 1.14,
                              letterSpacing: -0.260000031,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),

              Container(
                // group48gJt (23:138)
                height: 70,
                padding: EdgeInsets.only(left: 35, right: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff6f6f6),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),

                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'Lesson 3',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.domine(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.14,
                          letterSpacing: -0.4800000572,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      width: 110,
                      height: 35,
                      decoration: BoxDecoration(
                        //color: Colors.tealAccent,
                        color: colors[2],
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            results[2],
                            //'Beginner',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.domine(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 1.14,
                              letterSpacing: -0.260000031,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),


              Container(
                // group48gJt (23:138)
                height: 70,
                padding: EdgeInsets.only(left: 35, right: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff6f6f6),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),

                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'Lesson 4',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.domine(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.14,
                          letterSpacing: -0.4800000572,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      width: 110,
                      height: 35,
                      decoration: BoxDecoration(
                        //color: Colors.tealAccent,
                        color: colors[3],
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            results[3],
                            //'Beginner',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.domine(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 1.14,
                              letterSpacing: -0.260000031,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),


              Container(
                // group48gJt (23:138)
                height: 70,
                padding: EdgeInsets.only(left: 35, right: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xfff6f6f6),
                  borderRadius: BorderRadius.circular(14),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0x3f000000),
                      offset: Offset(0, 4),
                      blurRadius: 2,
                    ),
                  ],
                ),

                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 15),
                      child: Text(
                        'Lesson 5',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.domine(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 1.14,
                          letterSpacing: -0.4800000572,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      width: 110,
                      height: 35,
                      decoration: BoxDecoration(
                        //color: Colors.tealAccent,
                        color: colors[4],
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Center(
                        child: Center(
                          child: Text(
                            results[4],
                            //'Beginner',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.domine(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 1.14,
                              letterSpacing: -0.260000031,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70,
              ),

              Container(
                // group9WiU (23:135)
                margin: EdgeInsets.only(left: 20,right: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home_Page()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Color(0xfc161853),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Center(
                        child: Text(
                          'Back to main',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rokkitt(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            height: 1.1375,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
