import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/pages/profile.dart';
import '../exam/question1.dart';
import 'package:safe_driving101/read%20data/homePage.dart';

class Skill extends StatefulWidget {
  const Skill({Key? key}) : super(key: key);

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {

  final users = FirebaseAuth.instance.currentUser!;
  List<Color> colors = [];
  final CollectionReference usersCollection =
  FirebaseFirestore.instance.collection('Users');

  Future<void> updateLevels(List<String> results) async {
    try {


      final String userId = usersCollection.id; // Use 'uid' instead of 'email.toString()'

      // Update the 'Levels' field in the Firebase document
      await usersCollection.doc(userId).set({'Levels': results});

      print(usersCollection.id);
      print('Levels updated successfully');
    } catch (e) {
      print('Error updating levels: $e');
    }
    print(usersCollection.id);
  }

  @override
  Widget build(BuildContext context) {
    for (int i = 0; i < 5; i++) {
      if (results[i] == "Beginner") {
        colors.add(Color(0x33ff0000));
      } else if (results[i] == "Intermediate") {
        colors.add(Color(0xfffffbb1));
      } else {
        colors.add(Color(0xffc6ffbd));
      }
    }
    // // Call the updateLevels method passing the results list
    // updateLevels(results).catchError((error) {
    //   print('Error updating levels: $error');
    // });
    @override
    void initState() {
      super.initState();
      List<String> result = [results[0], results[1], results[2], results[3], results[4]];
      updateLevels(result);
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff), // change to your desired color
        centerTitle: true,
        elevation: 0.0,

        title: Text(
          'Levels',
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
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Colors.white,
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
            padding: EdgeInsets.only(left: 35, right: 35),
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
                  margin: EdgeInsets.only(left: 70),
                  width: 80,
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
            padding: EdgeInsets.only(left: 35, right: 35),
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
                  width: 80,
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
            padding: EdgeInsets.only(left: 35, right: 35),
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
                  width: 80,
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
            padding: EdgeInsets.only(left: 35, right: 35),
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
                  width: 80,
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
            padding: EdgeInsets.only(left: 35, right: 35),
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
                  width: 80,
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
            height: 30,
          ),
          ]
          ),
        ),
      ),
    );
  }
}
