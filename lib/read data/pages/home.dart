
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/Authentication_Page/log-in.dart';
import 'package:safe_driving101/exam/question1.dart';
import 'package:safe_driving101/exam/result1.dart';
import 'package:safe_driving101/read%20data/Guides/Driving_license/driving_license.dart';
import 'package:safe_driving101/read%20data/Guides/Guide1/tools1.dart';
import 'package:safe_driving101/read%20data/Guides/Manage_dangers/manage_dangers.dart';
import 'package:safe_driving101/read%20data/Guides/Traffic_Infraction/traffic_infraction.dart';
import 'package:safe_driving101/read%20data/pages/test.dart';
import 'package:safe_driving101/Authentication_Page/hello5.dart';
import '../Guides/Choose_car/choose_car1.dart';

// class Lesson {
//   final int lessonID;
//
//   const Lesson({
//     required this.lessonID,
//   });
// }

class Lesson {
  final String lessons;

  const Lesson({
    required this.lessons,
  });
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //////////////////////////////////////////

  final users = FirebaseAuth.instance.currentUser!;
  List<Color> colors = [];
  final CollectionReference usersCollection =
  FirebaseFirestore.instance.collection('Users');
  Future<List<String>> fetchUserLevels() async {
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
          final userData = document.data() as Map<String, dynamic>;
          final levels = userData['levels'] as List<dynamic>;

          // Convert levels to List<String>
          List<String> userLevels = levels.cast<String>();

          return userLevels;
        } else {
          print('User document not found');
        }
      } else {
        print('User email is null');
      }
    } catch (e) {
      print('Error fetching user levels: $e');
    }

    // Return default levels if fetching fails
    return ['Beginner', 'Beginner', 'Beginner', 'Beginner', 'Beginner'];
  }

  bool loggedIn = false;
  List<Lesson> recomended = [];
  List<Lesson> completed = [];

  List<String> searchData = [
    'Choosing a car',
    'Tools using in the car',
    'Manage dangers',
    'Traffic infraction ',
    'Driving license',
  ];

  //  List<String> searchResults = [];
  //
  // void search(String query) {
  //   setState(() {
  //     if (query.isNotEmpty) {
  //       searchResults = searchData
  //           .where((data) => data.toLowerCase().contains(query.toLowerCase()))
  //           .toList();
  //     } else {
  //       searchResults = List.from(searchData);
  //     }
  //   });
  // }
  //
  List<String> searchResults = [];
  bool isSearching = false;

  // void search(String query) {
  //   setState(() {
  //     if (query.isNotEmpty) {
  //       searchResults = recomended
  //           .where((lesson) =>
  //           lesson.lessons.toLowerCase().contains(query.toLowerCase())).cast<String>()
  //           .toList();
  //       isSearching = true;
  //     } else {
  //       searchResults = List.from(recomended);
  //       isSearching = false;
  //     }
  //   });
  // }



  @override
  void initState() {
    super.initState();
    // search('');
  }

  void signOut() {
    setState(() {
      loggedIn = false;
    });
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  // document IDs
  //List<String> docIDs = [];

  // get docIDs
  // Future getDocId() async {
  //   await FirebaseFirestore.instance
  //       .collection("Users")
  //       .where('email', isEqualTo: user.email)
  //       .get()
  //       .then(
  //         (snapshot) => snapshot.docs.forEach(
  //           (document) {
  //             print(document.reference);
  //             docIDs.add(document.reference.id);
  //           },
  //         ),
  //       );
  // }

  @override
  Widget build(BuildContext context) {
    /////////////////////////////////

    final Future<List<String>> userLevelsFuture = fetchUserLevels();
    return FutureBuilder<List<String>>(
        future: userLevelsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error fetching user levels');
          } else {
            // User levels fetched successfully
            List<String> userLevels = snapshot.data ?? [];

            // Rest of your build method code...
            for (int i = 0; i < 5; i++) {
              if (userLevels[i] == "Beginner") {
                switch(i){
                  case 0:
                    recomended.add(Lesson(lessons: "Choosing a car"));
                    break;
                  case 1:
                    recomended.add(Lesson(lessons: "Tools using in the car"));
                    break;
                  case 2:
                    recomended.add(Lesson(lessons: "Manage dangers"));
                    break;
                  case 3:
                    recomended.add(Lesson(lessons: "Traffic infraction "));
                    break;
                  case 4:
                    recomended.add(Lesson(lessons: "Driving license"));
                    break;
                }
                // recomended.add(Lesson(lessonID: i));
              } else if (userLevels[i] == "Intermediate") {
                switch(i){
                  case 0:
                    recomended.add(Lesson(lessons: "Choosing a car"));
                    break;
                  case 1:
                    recomended.add(Lesson(lessons: "Tools using in the car"));
                    break;
                  case 2:
                    recomended.add(Lesson(lessons: "Manage dangers"));
                    break;
                  case 3:
                    recomended.add(Lesson(lessons: "Traffic infraction "));
                    break;
                  case 4:
                    recomended.add(Lesson(lessons: "Driving license"));
                    break;
                }
                // recomended.add(Lesson(lessonID: i));
              } else {
                switch(i){
                  case 0:
                    completed.add(Lesson(lessons: "Choosing a car"));
                    break;
                  case 1:
                    completed.add(Lesson(lessons: "Tools using in the car"));
                    break;
                  case 2:
                    completed.add(Lesson(lessons: "Manage dangers"));
                    break;
                  case 3:
                    completed.add(Lesson(lessons: "Traffic infraction "));
                    break;
                  case 4:
                    completed.add(Lesson(lessons: "Driving license"));
                    break;
                }
                // completed.add(Lesson(lessonID: i));
              }
            }

            return Scaffold(
              appBar: AppBar(
                backgroundColor: Color(0xfcffffff),
                // change to your desired color
                centerTitle: true,
                elevation: 0.0,
                title: Text(
                  'My Lessons',
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
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('Users')
                        .where("email", isEqualTo: users.email)
                        .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      }

                      return Center(
                        child: Column(
                          children: [snapshot.data!.docs[0]].map(
                                (document) {
                              return Container(
                                child: Center(
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 23),
                                        width: double.infinity,
                                        height: 40,
                                        child: Text(
                                          'Welcome back',
                                          style: GoogleFonts.domine(
                                            fontSize: 27,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ),
                                      //SizedBox(height: 5,),
                                      Container(
                                          margin: EdgeInsets.only(left: 35),
                                          width: double.infinity,
                                          height: 30,
                                          child: Text(
                                            document['nick name'],
                                            style: GoogleFonts.rokkitt(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20,
                                              color: Color(0xFFEC255A),
                                            ),
                                          )),
                              //
                              //         Container(
                              //   margin: EdgeInsets.only(left: 23, right: 23),
                              //   width: double.infinity,
                              //   height: 50,
                              //   child: TextField(
                              //     onChanged: search,
                              //     style: GoogleFonts.rokkitt(
                              //       //Color(0xffc2c5bc),
                              //       textStyle: TextStyle(
                              //         fontSize: 15.0,
                              //         color: Colors.grey[900],
                              //       ),
                              //     ),
                              //     decoration: InputDecoration(
                              //       filled: true,
                              //       fillColor: Color(0x3fdadada),
                              //       border: OutlineInputBorder(
                              //         borderRadius: BorderRadius.circular(100),
                              //         borderSide: BorderSide.none,
                              //       ),
                              //       hintText: "What are you looking for?",
                              //       prefixIcon: Icon(Icons.search),
                              //       prefixIconColor: Colors.grey,
                              //     ),
                              //   ),
                              // ),

                                      SizedBox(
                                        height: 37,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 23),
                                        width: double.infinity,
                                        height: 30,
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                'Recommended',
                                                style: GoogleFonts.domine(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                '   _________________________',
                                                style: GoogleFonts.domine(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                         Container(
                                          height: 140,
                                          child: ListView.separated(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: isSearching ? searchResults.length : recomended.length,
                                            separatorBuilder: (context, _) => SizedBox(width: 12),
                                            itemBuilder: (context, int index) {
                                              final item = isSearching
                                                  ? searchResults[index]
                                                  : recomended[index].lessons;
                                              Widget buttonWidget;

                                              if (index <
                                                  recomended.length) {
                                                switch (item) {
                                                  case "Choosing a car":
                                                    buttonWidget =
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                              13, 0, 0,
                                                              0),
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.of(context).push(
                                                                PageRouteBuilder(
                                                                  pageBuilder: (context, animation, secondaryAnimation) {
                                                                    return ChooseCar();
                                                                  },
                                                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                                    // Use FadeTransition for the transition animation
                                                                    return FadeTransition(
                                                                      opacity: animation,
                                                                      child: child,
                                                                    );
                                                                  },
                                                                ),
                                                              );
                                                            },
                                                            style: ElevatedButton
                                                                .styleFrom(

                                                              padding:
                                                              EdgeInsets.fromLTRB(
                                                                  10, 8, 10, 0),
                                                              primary:
                                                              Color(0xfcc4eaf6),
                                                              shape:
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(26),
                                                              ),
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                      0, 15, 0,
                                                                      10),
                                                                  child: Text(
                                                                    'Choosing a car',
                                                                    style: GoogleFonts
                                                                        .domine(
                                                                      fontSize: 12,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                      height: 1.35,
                                                                      color: Color(
                                                                          0xff000000),
                                                                    ),
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                  ),
                                                                ),
                                                                Container(
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                      50, 10, 0,
                                                                      0),
                                                                  width: 75,
                                                                  height: 75,
                                                                  child: Image
                                                                      .asset(
                                                                    'images/image-24.png',
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                    break;
                                                  case "Tools using in the car":
                                                    buttonWidget = InkWell(
                                                      onTap: () {
                                                        Navigator.of(context).push(
                                                          PageRouteBuilder(
                                                            pageBuilder: (context, animation, secondaryAnimation) {
                                                              return Tools1();
                                                            },
                                                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                              // Use FadeTransition for the transition animation
                                                              return FadeTransition(
                                                                opacity: animation,
                                                                child: child,
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10),
                                                        width: 150,
                                                        height: double.infinity,
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(26),
                                                          image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                              'images/rectangle-118-bg.png',
                                                            ),
                                                          ),
                                                        ),
                                                        child: Align(
                                                          // toolsusinginthecarj1o (1:68)
                                                          alignment:
                                                          Alignment.topLeft,
                                                          child: SizedBox(
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                  15,
                                                                  vertical:
                                                                  15),
                                                              // constraints: BoxConstraints(
                                                              //   maxWidth: 143,
                                                              // ),
                                                              child: Text(
                                                                'Tools using in \nthe car',
                                                                style: GoogleFonts
                                                                    .domine(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                                  height: 1.35,
                                                                  color: Color(
                                                                      0xfcffffff),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                    break;
                                                  case "Manage dangers":
                                                    buttonWidget =
                                                        Container(
                                                          margin: EdgeInsets
                                                              .fromLTRB(
                                                              13, 0, 0,
                                                              0),
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.of(context).push(
                                                                PageRouteBuilder(
                                                                  pageBuilder: (context, animation, secondaryAnimation) {
                                                                    return Manage();
                                                                  },
                                                                  transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                                    // Use FadeTransition for the transition animation
                                                                    return FadeTransition(
                                                                      opacity: animation,
                                                                      child: child,
                                                                    );
                                                                  },
                                                                ),
                                                              );
                                                            },
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                              padding:
                                                              EdgeInsets.fromLTRB(
                                                                  10, 8, 10, 0),
                                                              primary:
                                                              Color(0xfc161853),
                                                              shape:
                                                              RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius
                                                                    .circular(26),
                                                              ),
                                                            ),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              children: [
                                                                Container(
                                                                  // choosingacarnuB (1:76)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                      0, 15, 0,
                                                                      10),
                                                                  child: Text(
                                                                    'Manage dangers',
                                                                    style: GoogleFonts
                                                                        .domine(
                                                                      fontSize: 12,
                                                                      fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                      height: 1.35,
                                                                      color:
                                                                      Colors
                                                                          .white,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Container(
                                                                  // image24hFT (1:77)
                                                                  margin: EdgeInsets
                                                                      .fromLTRB(
                                                                      50, 10, 0,
                                                                      0),
                                                                  width: 75,
                                                                  height: 75,
                                                                  child: Image
                                                                      .asset(
                                                                    'images/image-25-83X.png',
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        );
                                                    break;
                                                  case "Traffic infraction ":
                                                    buttonWidget = InkWell(
                                                      onTap: () {
                                                        Navigator.of(context).push(
                                                          PageRouteBuilder(
                                                            pageBuilder: (context, animation, secondaryAnimation) {
                                                              return Traffic();
                                                            },
                                                            transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                              // Use FadeTransition for the transition animation
                                                              return FadeTransition(
                                                                opacity: animation,
                                                                child: child,
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                      child: Container(
                                                        margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 10),
                                                        width: 150,
                                                        height: double.infinity,
                                                        decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(26),
                                                          image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage(
                                                              'images/car 4.jpg',
                                                            ),
                                                          ),
                                                        ),
                                                        child: Align(
                                                          // toolsusinginthecarj1o (1:68)
                                                          alignment:
                                                          Alignment.topLeft,
                                                          child: SizedBox(
                                                            child: Container(
                                                              margin: EdgeInsets
                                                                  .symmetric(
                                                                  horizontal:
                                                                  15,
                                                                  vertical:
                                                                  15),
                                                              // constraints: BoxConstraints(
                                                              //   maxWidth: 143,
                                                              // ),
                                                              child: Text(
                                                                'Traffic infraction ',
                                                                style: GoogleFonts
                                                                    .domine(
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                  FontWeight
                                                                      .w700,
                                                                  height: 1.35,
                                                                  color: Color(
                                                                      0xfcffffff),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                    break;
                                                  case "Driving license":
                                                    buttonWidget =
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.of(context).push(
                                                              PageRouteBuilder(
                                                                pageBuilder: (context, animation, secondaryAnimation) {
                                                                  return Driving_license();
                                                                },
                                                                transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                                  // Use FadeTransition for the transition animation
                                                                  return FadeTransition(
                                                                    opacity: animation,
                                                                    child: child,
                                                                  );
                                                                },
                                                              ),
                                                            );
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            padding:
                                                            EdgeInsets.fromLTRB(
                                                                10, 8, 10, 0),
                                                            primary:
                                                            Color(0xfcfee0e0),
                                                            shape:
                                                            RoundedRectangleBorder(
                                                              borderRadius:
                                                              BorderRadius
                                                                  .circular(26),
                                                            ),
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Container(
                                                                // choosingacarnuB (1:76)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                    0, 15, 0,
                                                                    10),
                                                                child: Text(
                                                                  'Driving license',
                                                                  style: GoogleFonts
                                                                      .domine(
                                                                    fontSize: 12,
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                    height: 1.35,
                                                                    color: Color(
                                                                        0xff000000),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                // image24hFT (1:77)
                                                                margin: EdgeInsets
                                                                    .fromLTRB(
                                                                    50, 6, 0,
                                                                    0),
                                                                width: 75,
                                                                height: 75,
                                                                child: Image
                                                                    .asset(
                                                                  'images/license.png',
                                                                  fit: BoxFit
                                                                      .cover,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        );
                                                    break;
                                                  default:
                                                    return SizedBox.shrink();
                                                }

                                                return Container(
                                                    child: buttonWidget);
                                              }
                                            }
                                          ),
                                        ),



                                      SizedBox(
                                        height: 40,
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(left: 23),
                                        width: double.infinity,
                                        height: 30,
                                        child: Row(
                                          children: [
                                            Container(
                                              child: Text(
                                                'Completed',
                                                style: GoogleFonts.domine(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                '   _______________________________',
                                                style: GoogleFonts.domine(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),

                                      Container(
                                        height: 140,
                                        child: ListView.separated(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: completed.length,
                                          separatorBuilder: (context, _) =>
                                              SizedBox(width: 12),
                                          itemBuilder: (context, int index) {
                                            Widget buttonWidget;
                                            if (index < completed.length) {
                                              switch (completed[index]
                                                  .lessons) {
                                                case "Choosing a car":
                                                  buttonWidget = ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                        PageRouteBuilder(
                                                          pageBuilder: (context, animation, secondaryAnimation) {
                                                            return ChooseCar();
                                                          },
                                                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                            // Use FadeTransition for the transition animation
                                                            return FadeTransition(
                                                              opacity: animation,
                                                              child: child,
                                                            );
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    style:
                                                    ElevatedButton.styleFrom(
                                                      padding:
                                                      EdgeInsets.fromLTRB(
                                                          10, 8, 10, 0),
                                                      primary: Color(
                                                          0xfcc4eaf6),
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            26),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Container(
                                                          margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 15, 0, 10),
                                                          child: Text(
                                                            'Choosing a car',
                                                            style: GoogleFonts
                                                                .domine(
                                                              fontSize: 12,
                                                              fontWeight:
                                                              FontWeight.w400,
                                                              height: 1.35,
                                                              color: Color(
                                                                  0xff000000),
                                                            ),
                                                            textAlign:
                                                            TextAlign.left,
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                          EdgeInsets.fromLTRB(
                                                              50, 10, 0, 0),
                                                          width: 75,
                                                          height: 75,
                                                          child: Image.asset(
                                                            'images/image-24.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                  break;
                                                case "Tools using in the car":
                                                  buttonWidget = InkWell(
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                        PageRouteBuilder(
                                                          pageBuilder: (context, animation, secondaryAnimation) {
                                                            return Tools1();
                                                          },
                                                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                            // Use FadeTransition for the transition animation
                                                            return FadeTransition(
                                                              opacity: animation,
                                                              child: child,
                                                            );
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      margin:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10),
                                                      width: 150,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            26),
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                            'images/rectangle-118-bg.png',
                                                          ),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        // toolsusinginthecarj1o (1:68)
                                                        alignment:
                                                        Alignment.topLeft,
                                                        child: SizedBox(
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                horizontal:
                                                                15,
                                                                vertical: 15),
                                                            // constraints: BoxConstraints(
                                                            //   maxWidth: 143,
                                                            // ),
                                                            child: Text(
                                                              'Tools using in \nthe car',
                                                              style: GoogleFonts
                                                                  .domine(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                                height: 1.35,
                                                                color: Color(
                                                                    0xfcffffff),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                  break;
                                                case "Manage dangers":
                                                  buttonWidget = ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                        PageRouteBuilder(
                                                          pageBuilder: (context, animation, secondaryAnimation) {
                                                            return Manage();
                                                          },
                                                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                            // Use FadeTransition for the transition animation
                                                            return FadeTransition(
                                                              opacity: animation,
                                                              child: child,
                                                            );
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    style:
                                                    ElevatedButton.styleFrom(
                                                      padding:
                                                      EdgeInsets.fromLTRB(
                                                          10, 8, 10, 0),
                                                      primary: Color(
                                                          0xfc161853),
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            26),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Container(
                                                          // choosingacarnuB (1:76)
                                                          margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 15, 0, 10),
                                                          child: Text(
                                                            'Manage dangers',
                                                            style: GoogleFonts
                                                                .domine(
                                                              fontSize: 12,
                                                              fontWeight:
                                                              FontWeight.w400,
                                                              height: 1.35,
                                                              color: Colors
                                                                  .white,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // image24hFT (1:77)
                                                          margin:
                                                          EdgeInsets.fromLTRB(
                                                              50, 10, 0, 0),
                                                          width: 75,
                                                          height: 75,
                                                          child: Image.asset(
                                                            'images/image-25-83X.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                  break;
                                                case "Traffic infraction ":
                                                  buttonWidget = InkWell(
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                        PageRouteBuilder(
                                                          pageBuilder: (context, animation, secondaryAnimation) {
                                                            return Traffic();
                                                          },
                                                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                            // Use FadeTransition for the transition animation
                                                            return FadeTransition(
                                                              opacity: animation,
                                                              child: child,
                                                            );
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    child: Container(
                                                      margin:
                                                      EdgeInsets.symmetric(
                                                          horizontal: 10),
                                                      width: 150,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            26),
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                            'images/car 4.jpg',
                                                          ),
                                                        ),
                                                      ),
                                                      child: Align(
                                                        // toolsusinginthecarj1o (1:68)
                                                        alignment:
                                                        Alignment.topLeft,
                                                        child: SizedBox(
                                                          child: Container(
                                                            margin: EdgeInsets
                                                                .symmetric(
                                                                horizontal:
                                                                15,
                                                                vertical: 15),
                                                            // constraints: BoxConstraints(
                                                            //   maxWidth: 143,
                                                            // ),
                                                            child: Text(
                                                              'Traffic infraction ',
                                                              style: GoogleFonts
                                                                  .domine(
                                                                fontSize: 12,
                                                                fontWeight:
                                                                FontWeight
                                                                    .w700,
                                                                height: 1.35,
                                                                color: Color(
                                                                    0xfcffffff),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                  break;
                                                case "Driving license":
                                                  buttonWidget = ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.of(context).push(
                                                        PageRouteBuilder(
                                                          pageBuilder: (context, animation, secondaryAnimation) {
                                                            return Driving_license();
                                                          },
                                                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                                            // Use FadeTransition for the transition animation
                                                            return FadeTransition(
                                                              opacity: animation,
                                                              child: child,
                                                            );
                                                          },
                                                        ),
                                                      );
                                                    },
                                                    style:
                                                    ElevatedButton.styleFrom(
                                                      padding:
                                                      EdgeInsets.fromLTRB(
                                                          10, 8, 10, 0),
                                                      primary: Color(
                                                          0xfcfee0e0),
                                                      shape:
                                                      RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            26),
                                                      ),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .start,
                                                      children: [
                                                        Container(
                                                          // choosingacarnuB (1:76)
                                                          margin:
                                                          EdgeInsets.fromLTRB(
                                                              0, 15, 0, 10),
                                                          child: Text(
                                                            'Driving license',
                                                            style: GoogleFonts
                                                                .domine(
                                                              fontSize: 12,
                                                              fontWeight:
                                                              FontWeight.w400,
                                                              height: 1.35,
                                                              color: Color(
                                                                  0xff000000),
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          // image24hFT (1:77)
                                                          margin:
                                                          EdgeInsets.fromLTRB(
                                                              50, 6, 0, 0),
                                                          width: 75,
                                                          height: 75,
                                                          child: Image.asset(
                                                            'images/license.png',
                                                            fit: BoxFit.cover,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                  break;
                                                default:
                                                  return SizedBox.shrink();
                                              }
                                              return Container(
                                                  child: buttonWidget);
                                            }
                                          }
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ).toList(),
                        ),
                      );
                    }),
              ),
            );
          }
        });
  }
}