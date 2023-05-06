// import 'package:flutter/material.dart';
// // import 'package:flutter/gestures.dart';
// import 'dart:ui';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:safe_driving101/exam/question1.dart';
// import 'package:safe_driving101/exam/result1.dart';
// import 'package:safe_driving101/read%20data/pages/test.dart';
//
//
// class Lesson {
//   final int lessonID;
//   //final String imagePath;
//   //final String pagePath;
//
//   const Lesson({
//     required this.lessonID,
//     //  required this.imagePath,
//     //  required this.pagePath,
//   });
// }
//
// class Home extends StatefulWidget {
//   const Home({super.key});
//   @override
//   State<Home> createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   List<Lesson> recomended = [];
//   List<Lesson> completed = [];
//
//   @override
//   Widget build(BuildContext context) {
//     for (int i = 0; i < 5; i++) {
//       if (results[i] == 'Expert') {
//         completed.add(Lesson(lessonID: i));
//       } else {
//         recomended.add(Lesson(lessonID: i));
//       }
//     }
//
//     List<String> imagePaths = [
//       'assets/page-1/images/Car.png',
//       'assets/page-1/images/expandright.png',
//       'assets/page-1/images/Car.png',
//       'assets/page-1/images/expandright.png',
//       'assets/page-1/images/Car.png'
//     ];
//
//     double baseWidth = 393;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//
//     return Container(
//       width: double.infinity,
//       child: Container(
//         // lessons21koS (4:3)
//         padding: EdgeInsets.fromLTRB(0 * fem, 5 * fem, 0 * fem, 4 * fem),
//         width: double.infinity,
//         decoration: BoxDecoration(
//           color: Color(0xffffffff),
//         ),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(
//                 // autogroupfhhsoWp (AE3SgUsC7HZJdNZaz5FhHS)
//                 margin:
//                 EdgeInsets.fromLTRB(13 * fem, 0 * fem, 0 * fem, 4 * fem),
//                 width: 260 * fem,
//                 height: 147 * fem,
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       // welcomebackrenad13Kk4 (4:19)
//                       left: 22 * fem,
//                       top: 34 * fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 238 * fem,
//                           height: 113 * fem,
//                           child: RichText(
//                             text: TextSpan(
//                               style: GoogleFonts.domine(
//                                 fontSize: 32 * ffem,
//                                 fontWeight: FontWeight.w700,
//                                 height: 1.7628126144 * ffem / fem,
//                                 letterSpacing: 0.16 * fem,
//                                 color: Color(0xff000000),
//                               ),
//                               children: [
//                                 TextSpan(
//                                   text: 'Welcome back \n',
//                                 ),
//                                 TextSpan(
//                                   text: 'Renad13',
//                                   style:GoogleFonts.rokkitt(
//                                     fontSize: 32 * ffem,
//                                     fontWeight: FontWeight.w700,
//                                     height: 1.7628126144 * ffem / fem,
//                                     letterSpacing: 0.16 * fem,
//                                     color: Color(0xfcec255a),
//                                   ),
//                                 ),
//                                 TextSpan(
//                                   text: ' ',
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 // line8bDi (4:28)
//                 margin:
//                 EdgeInsets.fromLTRB(34 * fem, 0 * fem, 29 * fem, 13 * fem),
//                 width: double.infinity,
//                 height: 1 * fem,
//                 decoration: BoxDecoration(
//                   color: Color(0xff000000),
//                 ),
//               ),
//               Container(
//                 // mylessons7xk (4:20)
//                 margin:
//                 EdgeInsets.fromLTRB(36 * fem, 0 * fem, 0 * fem, 16 * fem),
//                 child: Text(
//                   'My Lessons...',
//                   style: GoogleFonts.domine(
//                     fontSize: 30 * ffem,
//                     fontWeight: FontWeight.w700,
//                     height: 1.14 * ffem / fem,
//                     letterSpacing: -0.6000000715 * fem,
//                     color: Color(0xff000000),
//                   ),
//                 ),
//               ),
//               Container(
//                 // searchSEL (4:21)
//                 margin:
//                 EdgeInsets.fromLTRB(20 * fem, 0 * fem, 11 * fem, 66 * fem),
//                 width: double.infinity,
//                 height: 48 * fem,
//                 child: Container(
//                   // inputsearchAw2 (4:22)
//                   padding: EdgeInsets.fromLTRB(
//                       18.5 * fem, 13 * fem, 126 * fem, 13 * fem),
//                   width: double.infinity,
//                   height: double.infinity,
//                   decoration: BoxDecoration(
//                     color: Color(0x3fdadada),
//                     borderRadius: BorderRadius.circular(100 * fem),
//                   ),
//                   child: ClipRect(
//                     child: BackdropFilter(
//                       filter: ImageFilter.blur(
//                         sigmaX: 0 * fem,
//                         sigmaY: 0 * fem,
//                       ),
//                       child: Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           Container(
//                             // iconsearchFha (4:25)
//                             margin: EdgeInsets.fromLTRB(
//                                 0 * fem, 0 * fem, 14.5 * fem, 0 * fem),
//                             width: 15 * fem,
//                             height: 15 * fem,
//                             child: Image.asset(
//                               'assets/page-1/images/searchIcon.png',
//                               width: 15 * fem,
//                               height: 15 * fem,
//                             ),
//                           ),
//                           Text(
//                             // whatareyoulookingforMkc (4:24)
//                             'What are you looking for?',
//                             style: GoogleFonts.rokkitt(
//                               fontSize: 16 * ffem,
//                               fontWeight: FontWeight.w400,
//                               height: 1.3500000238 * ffem / fem,
//                               color: Color(0xffaeaeae),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               Container(
//                 // autogroup5as2gnt (AE3SrtjWaeTdnyisP65as2)
//                 margin: EdgeInsets.fromLTRB(
//                     26.5 * fem, 0 * fem, 24 * fem, 25 * fem),
//                 width: double.infinity,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Center(
//                       // recommendedREg (4:4)
//                       child: Container(
//                         margin: EdgeInsets.fromLTRB(
//                             0 * fem, 0 * fem, 15.5 * fem, 0 * fem),
//                         child: Text(
//                           'Recommended',
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.domine(
//                             fontSize: 24 * ffem,
//                             fontWeight: FontWeight.w700,
//                             height: 1.14 * ffem / fem,
//                             letterSpacing: -0.4800000572 * fem,
//                             color: Color(0xff000000),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       // line9jWG (4:13)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 1 * fem, 0 * fem, 0 * fem),
//                       width: 153 * fem,
//                       height: 1 * fem,
//                       decoration: BoxDecoration(
//                         color: Color(0xff000000),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 140,
//                 child: ListView.separated(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: recomended.length,
//                     separatorBuilder: (context, _) => SizedBox(width: 12),
//                     itemBuilder: (context, int index) {
//                       return Container(
//                         child: TextButton(
//                           onPressed: () {
//                             switch (recomended[index].lessonID) {
//                               case 0:
//                                 {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Test()),
//                                   );
//                                 }
//                                 break;
//
//                               case 1:
//                                 {
//                                   //statements;
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Result1()),
//                                   );
//                                 }
//                                 break;
//                               case 2:
//                                 {
//                                   //statements;
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Result1()),
//                                   );
//                                 }
//                                 break;
//                               case 3:
//                                 {
//                                   //statements;
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Result1()),
//                                   );
//                                 }
//                                 break;
//                               case 4:
//                                 {
//                                   //statements;
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Result1()),
//                                   );
//                                 }
//                                 break;
//
//                             // default: {
//                             //statements;
//                             // }
//                             // break;
//                             }
//                           },
//                           style: TextButton.styleFrom(
//                             padding: EdgeInsets.zero,
//                           ),
//                           child: Container(
//                             width: 200,
//                             height: 200,
//                             child: Image.asset(
//                               //recomended[index].imagePath
//                               imagePaths[recomended[index].lessonID],
//                               width: 200,
//                               height: 200,
//                             ),
//                           ),
//                         ),
//                       );
//                       //buildCard1();
//                       //buildCard2();
//                     }
//                   //(context, index) => buildCard2(),
//                   //buildCard1(),
//                   //SizedBox(width: 12),
//                 ),
//               ),
//               Container(
//                 // completd line
//                 margin:
//                 EdgeInsets.fromLTRB(30 * fem, 0 * fem, 24 * fem, 25 * fem),
//                 width: double.infinity,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Center(
//                       // completediuW (4:17)
//                       child: Container(
//                         margin: EdgeInsets.fromLTRB(
//                             0 * fem, 0 * fem, 16 * fem, 0 * fem),
//                         child: Text(
//                           'Completed',
//                           textAlign: TextAlign.center,
//                           style: GoogleFonts.domine(
//                             fontSize: 24 * ffem,
//                             fontWeight: FontWeight.w700,
//                             height: 1.14 * ffem / fem,
//                             letterSpacing: -0.4800000572 * fem,
//                             color: Color(0xff000000),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Container(
//                       // line10e2U (4:18)
//                       margin: EdgeInsets.fromLTRB(
//                           0 * fem, 1 * fem, 0 * fem, 0 * fem),
//                       width: 198 * fem,
//                       height: 1 * fem,
//                       decoration: BoxDecoration(
//                         color: Color(0xff000000),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 height: 140,
//                 child: ListView.separated(
//                     scrollDirection: Axis.horizontal,
//                     itemCount: completed.length,
//                     separatorBuilder: (context, _) => SizedBox(width: 12),
//                     itemBuilder: (context, int index) {
//                       return Container(
//                         child: TextButton(
//                           onPressed: () {
//                             switch (completed[index].lessonID) {
//                               case 0:
//                                 {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Test()),
//                                   );
//                                 }
//                                 break;
//
//                               case 1:
//                                 {
//                                   //statements;
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Result1()),
//                                   );
//                                 }
//                                 break;
//                               case 2:
//                                 {
//                                   //statements;
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Result1()),
//                                   );
//                                 }
//                                 break;
//                               case 3:
//                                 {
//                                   //statements;
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Result1()),
//                                   );
//                                 }
//                                 break;
//                               case 4:
//                                 {
//                                   //statements;
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) => Result1()),
//                                   );
//                                 }
//                                 break;
//
//                             // default: {
//                             //statements;
//                             // }
//                             // break;
//                             }
//                           },
//                           style: TextButton.styleFrom(
//                             padding: EdgeInsets.zero,
//                           ),
//                           child: Container(
//                             width: 200,
//                             height: 200,
//                             child: Image.asset(
//                               //recomended[index].imagePath
//                               imagePaths[completed[index].lessonID],
//                               width: 200,
//                               height: 200,
//                             ),
//                           ),
//                         ),
//                       );
//                       //buildCard1();
//                       //buildCard2();
//                     }
//                   //(context, index) => buildCard2(),
//                   //buildCard1(),
//                   //SizedBox(width: 12),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

/*Widget buildCard1() => Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Ink.image(
          image: AssetImage('assets/page-1/images/expandright.png'),
          fit: BoxFit.cover,
          child: InkWell(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Result()),
            );
          }),
        ),
      );

  Widget buildCard2() => Container(
        width: 200,
        height: 200,

        //color: Colors.red,

        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Test()),
            );
          },
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          child: Container(
            width: 200,
            height: 200,
            child: Image.asset(
              'assets/page-1/images/Car.png',
              width: 100,
              height: 100,
            ),
          ),
        ),
      );
  Widget buildCard3() => Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Ink.image(
          image: NetworkImage(
              'https://png.pngtree.com/png-vector/20200227/ourlarge/pngtree-driver-drive-car-in-the-capital-city-with-luxury-dashboard-png-image_2154267.jpg'),
          fit: BoxFit.cover,
          child: InkWell(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Result()),
            );
          }),
        ),
      );
  Widget buildCard4() => Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Ink.image(
          image: NetworkImage(
              'https://png.pngtree.com/png-vector/20200227/ourlarge/pngtree-driver-drive-car-in-the-capital-city-with-luxury-dashboard-png-image_2154267.jpg'),
          fit: BoxFit.cover,
          child: InkWell(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Result()),
            );
          }),
        ),
      );
  Widget buildCard5() => Container(
        width: 200,
        height: 200,
        color: Colors.red,
        child: Ink.image(
          image: NetworkImage(
              'https://png.pngtree.com/png-vector/20200227/ourlarge/pngtree-driver-drive-car-in-the-capital-city-with-luxury-dashboard-png-image_2154267.jpg'),
          fit: BoxFit.cover,
          child: InkWell(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Result()),
            );
          }),
        ),
      );*/
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/Authentication_Page/log-in.dart';
import 'package:safe_driving101/exam/question1.dart';
import 'package:safe_driving101/exam/result1.dart';
import 'package:safe_driving101/read%20data/Guides/Guide1/tools1.dart';
import 'package:safe_driving101/read%20data/pages/test.dart';

import '../Guides/Choose_car/choose_car1.dart';

class Lesson {
  final int lessonID;

  const Lesson({
    required this.lessonID,
  });
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //final user = FirebaseAuth.instance.currentUser!;
  final users = FirebaseAuth.instance.currentUser!;
  bool loggedIn = false;
  List<Lesson> recomended = [];
  List<Lesson> completed = [];

  List<String> imagePaths = [
    'images/car1.jpg',
    'images/car 2.jpg',
    'images/car 3.jpg',
    'images/car 4.jpg',
    'images/car 5.jpg'
  ];

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
    for (int i = 0; i < 5; i++) {
      if (results[i] == 'Expert') {
        completed.add(Lesson(lessonID: i));
      } else {
        recomended.add(Lesson(lessonID: i));
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
        // actions: [
        //   GestureDetector(
        //     onTap: () {
        //       FirebaseAuth.instance.signOut();
        //     },
        //     child: Icon(
        //       Icons.logout,
        //       color: Colors.black,
        //     ),
        //   )
        // ],

        // leading: IconButton(
        //   icon: Icon(Icons.logout,),
        //   color: Colors.black,
        //   onPressed: signOut,
        // ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('Users')
                .where("email", isEqualTo: users.email)
                .snapshots(),
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
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
                                height: 50,
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
                                  height: 50,
                                  child: Text(
                                    document['nick name'],
                                    style: GoogleFonts.rokkitt(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0xFFEC255A),
                                    ),
                                  )
                                  // FutureBuilder(
                                  //   future: getDocId(),
                                  //   builder: (context, snapshot) {
                                  //     if (snapshot.connectionState ==
                                  //         ConnectionState.done) {
                                  //       return ListTile(
                                  //         title: GetUserName(
                                  //           documentId: docIDs[0],
                                  //           style: GoogleFonts.rokkitt(
                                  //             fontWeight: FontWeight.bold,
                                  //             fontSize: 20,
                                  //             color: Color(0xFFEC255A),
                                  //           ),
                                  //         ),
                                  //       );
                                  //     }
                                  //     return Text('leading...');
                                  //   },
                                  // ),
                                  ),
                              Container(
                                margin: EdgeInsets.only(left: 23),
                                width: double.infinity,
                                height: 30,
                                child: Text(
                                  '_______________________________________________',
                                  style: GoogleFonts.domine(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              //SizedBox(height: 5,),
                              Container(
                                margin: EdgeInsets.only(left: 23, right: 23),
                                width: double.infinity,
                                height: 50,
                                child: TextField(
                                  style: GoogleFonts.rokkitt(
                                    //Color(0xffc2c5bc),
                                    textStyle: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.grey[900],
                                    ),
                                  ),
                                  decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Color(0x3fdadada),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(100),
                                      borderSide: BorderSide.none,
                                    ),
                                    hintText: "What are you looking for?",
                                    prefixIcon: Icon(Icons.search),
                                    prefixIconColor: Colors.grey,
                                  ),
                                ),
                              ),

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
                                // decoration: BoxDecoration(
                                //   borderRadius: BorderRadius.circular(20),
                                //   color: Colors.grey[200],
                                // ),
                                child: ListView.separated(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: recomended.length,
                                  separatorBuilder: (context, _) =>
                                      SizedBox(width: 12),
                                  itemBuilder: (context, int index) {
                                    Widget buttonWidget;
                                    switch (recomended[index].lessonID) {
                                      case 0:
                                        buttonWidget = ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ChooseCar()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 8, 10, 0),
                                            primary: Color(0xfcc4eaf6),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(26),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 15, 0, 10),
                                                child: Text(
                                                  'Choosing a car',
                                                  style: GoogleFonts.domine(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.35,
                                                    color: Color(0xff000000),
                                                  ),
                                                  textAlign: TextAlign.left,
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.fromLTRB(
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
                                      case 1:
                                        buttonWidget = InkWell(
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Tools1()),
                                            );
                                          },
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            width: 150,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(26),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                  'images/rectangle-118-bg.png',
                                                ),
                                              ),
                                            ),

                                            child: Align(
                                              // toolsusinginthecarj1o (1:68)
                                              alignment: Alignment.topLeft,
                                              child: SizedBox(
                                                child: Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 15,vertical: 15),
                                                  // constraints: BoxConstraints(
                                                  //   maxWidth: 143,
                                                  // ),
                                                  child: Text(
                                                    'Tools using in \nthe car',
                                                    style: GoogleFonts.domine(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 1.35,
                                                      color: Color(0xfcffffff),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                        break;
                                      case 2:
                                        buttonWidget = ElevatedButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        ChooseCar()));
                                          },
                                          style: ElevatedButton.styleFrom(
                                            padding: EdgeInsets.fromLTRB(
                                                10, 8, 10, 0),
                                            primary: Color(0xfc161853),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(26),
                                            ),
                                          ),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // choosingacarnuB (1:76)
                                                margin: EdgeInsets.fromLTRB(
                                                    0, 15, 0, 10),
                                                child: Text(
                                                  'Manage dangers',
                                                  style: GoogleFonts.domine(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.35,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                // image24hFT (1:77)
                                                margin: EdgeInsets.fromLTRB(
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
                                      default:
                                        buttonWidget = TextButton(
                                          onPressed: () {
                                            // Do something else
                                          },
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            width: 200,
                                            height: 200,
                                            child: Image.asset(
                                              imagePaths[
                                                  recomended[index].lessonID],
                                              width: 200,
                                              height: 200,
                                            ),
                                          ),
                                        );
                                    }
                                    return Container(child: buttonWidget);
                                  },
                                ),
                              ),

                              // ElevatedButton(
                              //
                              //   onPressed: () {
                              //     switch (recomended[index].lessonID) {
                              //       case 0:
                              //         {
                              //           // Navigator.push(
                              //           //   context,
                              //           //   MaterialPageRoute(
                              //           //       builder: (context) => Test()),
                              //           // );
                              //         }
                              //         break;
                              //
                              //       case 1:
                              //         {
                              //           //statements;
                              //           // Navigator.push(
                              //           //   context,
                              //           //   MaterialPageRoute(
                              //           //       builder: (context) => Result1()),
                              //           // );
                              //         }
                              //         break;
                              //       case 2:
                              //         {
                              //           //statements;
                              //           // Navigator.push(
                              //           //   context,
                              //           //   MaterialPageRoute(
                              //           //       builder: (context) => Result1()),
                              //           // );
                              //         }
                              //         break;
                              //       case 3:
                              //         {
                              //           //statements;
                              //           // Navigator.push(
                              //           //   context,
                              //           //   MaterialPageRoute(
                              //           //       builder: (context) => Result1()),
                              //           // );
                              //         }
                              //         break;
                              //       case 4:
                              //         {
                              //           //statements;
                              //           // Navigator.push(
                              //           //   context,
                              //           //   MaterialPageRoute(
                              //           //       builder: (context) => Result1()),
                              //           // );
                              //         }
                              //         break;
                              //
                              //
                              //     }
                              //   },
                              //   style: TextButton.styleFrom(
                              //     padding: EdgeInsets.zero,
                              //   ),
                              //   child: Container(
                              //     width: 200,
                              //     height: 200,
                              //     child: Image.asset(
                              //       //recomended[index].imagePath
                              //       imagePaths[recomended[index].lessonID],
                              //       width: 200,
                              //       height: 200,
                              //     ),
                              //   ),
                              // ),
                              //         );
                              //
                              //       }
                              //
                              //   ),
                              // ),

                              // Container(
                              //   margin: EdgeInsets.only(left: 40),
                              //   width: double.infinity,
                              //   height: 130,
                              //   color: Colors.grey[100],
                              //   child: Container(
                              //     margin: EdgeInsets.symmetric(horizontal: 13),
                              //     child: Center(
                              //         child: Text(
                              //       'There is no lessons that recommended to you',
                              //       textAlign: TextAlign.center,
                              //       style: GoogleFonts.domine(
                              //         fontSize: 15,
                              //       ),
                              //     )),
                              //   ),
                              // ),

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
                                      return Container(
                                        child: TextButton(
                                          onPressed: () {
                                            switch (completed[index].lessonID) {
                                              case 0:
                                                {
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Test()),
                                                  );
                                                }
                                                break;

                                              case 1:
                                                {
                                                  //statements;
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Result1()),
                                                  );
                                                }
                                                break;
                                              case 2:
                                                {
                                                  //statements;
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Result1()),
                                                  );
                                                }
                                                break;
                                              case 3:
                                                {
                                                  //statements;
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Result1()),
                                                  );
                                                }
                                                break;
                                              case 4:
                                                {
                                                  //statements;
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Result1()),
                                                  );
                                                }
                                                break;
                                            }
                                          },
                                          style: TextButton.styleFrom(
                                            padding: EdgeInsets.zero,
                                          ),
                                          child: Container(
                                            width: 200,
                                            height: 200,
                                            child: Image.asset(
                                              //recomended[index].imagePath
                                              imagePaths[
                                                  completed[index].lessonID],
                                              width: 200,
                                              height: 200,
                                            ),
                                          ),
                                        ),
                                      );
                                    }),
                              ),

                              // Container(
                              //   margin: EdgeInsets.only(left: 40),
                              //   width: double.infinity,
                              //   height: 130,
                              //   color: Colors.grey[100],
                              //   child: Container(
                              //     margin: EdgeInsets.symmetric(horizontal: 13),
                              //     child: Center(
                              //         child: Text(
                              //       'There is no lessons that you completed',
                              //       textAlign: TextAlign.center,
                              //       style: GoogleFonts.domine(
                              //         fontSize: 15,
                              //       ),
                              //     )),
                              //   ),
                              // ),
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
}
