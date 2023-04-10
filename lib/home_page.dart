import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget{
  const HomePage ({Key? key}) : super (key: key);

  State<HomePage> createState() => _HomePageState();

}

class _HomePageState extends State<HomePage>{

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, you\'re signed in',
              style: TextStyle(fontSize: 22),
            ),
            Text(
              user.email!,
              style: TextStyle(fontSize: 22),
            ),

            MaterialButton(onPressed: (){
              FirebaseAuth.instance.signOut();
            },
              color: Colors.lightBlue,
              child: Text('Sign out',
                style: GoogleFonts.domine(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),),
            )
          ],
        ),
      ),
    );
        }
  }

