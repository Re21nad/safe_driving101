import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/log-in.dart';


void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: ResetPass()));
}

class ResetPass extends StatefulWidget {
  const ResetPass({Key? key}) : super(key: key);

  @override
  State<ResetPass> createState() => _ResetPassState();
}

class _ResetPassState extends State<ResetPass> {

  final _emailController = TextEditingController();

  @override
  void dispose(){
    _emailController.dispose();
    super.dispose();
  }

  Future passwordReset() async{
    try{
      await FirebaseAuth.instance.sendPasswordResetEmail(
          email: _emailController.text.trim());
      showDialog(
          context: context,
          builder: (context){
            return AlertDialog(
              content: Text('Password reset link sent! Check your email'),
            );
          },
      );
    } on FirebaseAuthException catch (e){
      print(e);
      showDialog(
          context: context,
          builder: (context){
            return AlertDialog(
              content: Text(e.message.toString()),
            );
          },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xfcffffff), // change to your desired color
        centerTitle: true,
        elevation: 0.0,

        title: Text(
          'Reset Password',
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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 20,right: 20,top:50),
              height: 60,
              alignment: Alignment.center,
              child: Text(
                  'Enter your email to send to you a link\n that you can reset your password:',
                style: GoogleFonts.rokkitt(
                  //Color(0xffc2c5bc),
                  textStyle: TextStyle(

                    fontSize: 17.0, // Set font size

                  ),),
            ),
            ),
            SizedBox(height: 30,),

            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              //padding: const EdgeInsets.symmetric(horizontal: 26.0),
              height: 50,
              child: TextField(
                controller: _emailController,
                style: GoogleFonts.rokkitt(
                  //Color(0xffc2c5bc),
                  textStyle: TextStyle(
                    fontSize: 17.0, // Set font size

                  ),
                ),

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xff1d1a20)),
                    borderRadius: BorderRadius.circular(10),
                    //color: Color(0xffffffff),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xfcec255a)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'E-mail',
                  fillColor: Color(0xffffffff),
                  filled: true,
                ),
              ),
            ),

            SizedBox(height: 50,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: GestureDetector(
                onTap: passwordReset,
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Color(0xfc161853),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text(
                      'Reset',
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
          ],
        ),
      ),
    );
  }
}
