import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/my-lessons.dart';
import 'package:safe_driving101/read%20data/get_user_name.dart';
import 'package:safe_driving101/read%20data/homePage.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  //final userRef = FirebaseFirestore.instance.collection('Users').doc(user.uid);

  Future<String> _getNickName(DocumentReference userRef) async {
    final snapshot = await userRef.get();
    final data = snapshot.data() as Map<String, dynamic>;
    return data['nick name'] ?? 'N/A';
  }


  // document IDs
  List<String> docIDs = [];

  // get docIDs
  Future getDocId() async {
    await FirebaseFirestore.instance.collection("Users").where(
        'email', isEqualTo: user.email).get().then(
          (snapshot) =>
          snapshot.docs.forEach(
                (document) {
              print(document.reference);
              docIDs.add(document.reference.id);
            },
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          user.email!,
          style: TextStyle(fontSize: 22),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              FirebaseAuth.instance.signOut();
            },
            child: Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //   'Hello, you\'re signed in',
            //   style: TextStyle(fontSize: 22),
            // ),

            // MaterialButton(onPressed: (){
            //
            // },
            //   color: Colors.lightBlue,
            //   child: Text('Sign out',
            //     style: GoogleFonts.domine(
            //       fontSize: 15,
            //       fontWeight: FontWeight.w700,
            //     ),),
            // ),

            // ******************************************************************
            // Expanded(
            //   child: FutureBuilder(
            //     future: getDocId(),
            //     builder: (context, snapshot) {
            //       return ListView.builder(
            //         itemCount: 1,
            //         itemBuilder: (context, index) {
            //           return Padding(
            //             padding: const EdgeInsets.all(8.0),
            //             child: ListTile(
            //               title: GetUserName(documentId: docIDs[index]),
            //               tileColor: Colors.grey[100],
            //             ),
            //           );
            //         },
            //       );
            //     },
            //   ),
            // ),

            Container(
              child: FutureBuilder(
                  future: getDocId(),
                  builder: (context, snapshot) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: GetUserName(documentId: docIDs[0]),
                          tileColor: Colors.grey[100],
                    ),
                    );

                  }
              ),
            ),
            // Expanded(
            //   child: ListView.builder(
            //     itemCount: 1,
            //     itemBuilder: (context, index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: ListTile(
            //           title: Text('Name: ${user.displayName}'),
            //           subtitle: Text('Email: ${user.email}\nNick name: ${GetUserName(documentId: docIDs[0],)}'),
            //           tileColor: Colors.grey[100],
            //         ),
            //       );
            //     },
            //   ),
            // ),


            ElevatedButton(
              child: Text(
                'Home',
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Home_Page()));
                //navigateNextPage(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
