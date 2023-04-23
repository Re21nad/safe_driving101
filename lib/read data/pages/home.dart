import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/log-in.dart';
import 'package:safe_driving101/read%20data/get_user_name.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //final user = FirebaseAuth.instance.currentUser!;
  final users = FirebaseAuth.instance.currentUser!;
  bool loggedIn = false;

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

        leading: IconButton(
          icon: Icon(Icons.logout,),
          color: Colors.black,
          onPressed: signOut,
        ),
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
                                child: Text(document['nick name'],
                                style: GoogleFonts.rokkitt(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Color(0xFFEC255A),
                                  ),)
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
                                margin: EdgeInsets.only(left: 40),
                                width: double.infinity,
                                height: 130,
                                color: Colors.grey[100],
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 13),
                                  child: Center(
                                      child: Text(
                                    'There is no lessons that recommended to you',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.domine(
                                      fontSize: 15,
                                    ),
                                  )),
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
                                margin: EdgeInsets.only(left: 40),
                                width: double.infinity,
                                height: 130,
                                color: Colors.grey[100],
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 13),
                                  child: Center(
                                      child: Text(
                                    'There is no lessons that you completed',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.domine(
                                      fontSize: 15,
                                    ),
                                  )),
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
}
