import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/read%20data/edit_profile.dart';
import 'package:safe_driving101/read%20data/skill.dart';

class Profile_ extends StatefulWidget {
  @override
  State<Profile_> createState() => _Profile_State();
}

class _Profile_State extends State<Profile_> {
  final users = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff),
        // change to your desired color
        centerTitle: true,
        elevation: 0.0,
        title: Text(
          'Profile',
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
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('Users')
            .where("email", isEqualTo: users.email)
            .snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          return Center(
            child: ListView(
              children: [snapshot.data!.docs[0]].map((document) {
                return Container(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 40,
                        child: Text(
                          document['nick name'],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.domine(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/tata.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 145,
                              left: 130,
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xfc161853),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 150,
                              left: 136,
                              child: Container(
                                width: 38,
                                height: 38,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 152,
                              left: 139,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => EditProfilePage()),
                                  );
                                },
                                child: Icon(Icons.edit,
                                    size: 30, color: Colors.black),
                              )
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        height: 20,
                        child: Text(
                          document['name'],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.domine(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: double.infinity,
                        height: 20,
                        child: Text(
                          document['email'],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.domine(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        // autogroupvcffSPX (ACE9YLqdGyaTrycDaNVcFf)
                        margin: EdgeInsets.only(left: 30, right: 30),
                        //padding: EdgeInsets.fromLTRB(14, 15, 14, 20),
                        width: double.infinity,
                        height: 102,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xffafafaf)),
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(33),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x3f000000),
                              offset: Offset(0, 4),
                              blurRadius: 2,
                            ),
                          ],
                        ),

                        child: Container(
                          child: Column(children: [
                            Container(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 30,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image:
                                            AssetImage('images/image-10.png'),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 60,
                                    height: 50,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 15, right: 20),
                                      child: Text(
                                        'Goal',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.domine(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 40,
                                    child: Padding(
                                      padding:
                                          EdgeInsets.only(top: 10, right: 5),
                                      child: Text(
                                        '30 Hours',
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.domine(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //SizedBox(height: 5,),
                            Container(
                              child: Row(children: [
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage('images/image-11.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),

                                //SizedBox(width: 5,),
                                Container(
                                  width: 190,
                                  height: 40,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, right: 25),
                                    child: Text(
                                      'Remaining Hours',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.domine(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),

                                //SizedBox(width: 5,),
                                Container(
                                  width: 100,
                                  height: 40,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 10, right: 13),
                                    child: Text(
                                      '19 Hours',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.domine(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                          ]),
                        ),
                      ),

                      //Center(child: Text(document['name'])),
                      //SizedBox(height: 8),
                      //Center(child: Text(document['email'])),

                      SizedBox(height: 20,),
                      Container(
                        width: 320,
                        height: 50,
                        child: ElevatedButton(

                          child: Text(
                            'Skills',
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
                                MaterialPageRoute(builder: (context) => Skill()),);
                          },
                        ),
                      ),


                      SizedBox(height: 15,),
                      Container(
                        width: 320,
                        height: 50,
                        child: ElevatedButton(

                          child: Text(
                            'Sign out',
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
                            FirebaseAuth.instance.signOut();
                          },
                        ),
                      ),

                    ],
                  ),
                );
              }).toList(),
            ),


          );
        },
      ),
    );
  }
}

//final String name = userData['name']?.toString() ?? '';
//final String email = userData['email']?.toString() ?? '';
//       return Scaffold(
//         appBar: AppBar(
//           title: Text('Profile'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // CircleAvatar(
//               //   radius: 50,
//               //   backgroundImage: NetworkImage(userData['avatarUrl']),
//               // ),
//               SizedBox(height: 16),
//               Text(
//                 userData['name'],
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 8),
//               Text(
//                 userData['email'],
//                 style: TextStyle(fontSize: 16),
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//     );
//   }
// }
