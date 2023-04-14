import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage1 extends StatefulWidget {
  @override
  State<HomePage1> createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
   String myNickname="";

  Future<void> _fetchNickname() async {
    final firebaseUser = FirebaseAuth.instance.currentUser;
    if (firebaseUser != null) {
      final snapshot = await FirebaseFirestore.instance
          .collection("Users")
          .doc(firebaseUser.uid)
          .get();

      final data = snapshot.data() as Map<String, dynamic>?;
      if (data != null) {
        setState(() {
          myNickname = data['nick name'] ?? '';
        });
      }
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchNickname();
  }

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
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: () {
            // Add the desired functionality when the back button is pressed
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(

        child: myNickname.isEmpty
            ? Text("Loading data...")
            : Text("Nick : $myNickname"),

      ),
    );
  }
}
