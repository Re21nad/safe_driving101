import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/log-in.dart';

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: signUp()));
// }

class signUp extends StatefulWidget {
  //final VoidCallback showLoginPage;
  const signUp({
    Key? key,
    //required this.showLoginPage,
  }) : super(key: key);

  @override
  State<signUp> createState() => _signUpState();
}

class _signUpState extends State<signUp> {
  final _nameController = TextEditingController();
  final _nickNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _birthDateController = TextEditingController();
  final _genderController = TextEditingController();
  final _cityController = TextEditingController();

  @override
  void dispose(){
    _nameController.dispose();
    _nickNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _birthDateController.dispose();
    _genderController.dispose();
    _cityController.dispose();
    super.dispose();
  }

  Future sign_up() async{

    showDialog(context: context, builder: (context){
      return Center(child: CircularProgressIndicator(),);
    });

    if(passwordConfirm()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),);

      addUserDetail(_nameController.text.trim(),
          _nickNameController.text.trim(),
          _emailController.text.trim(),
          _birthDateController.text.trim(),
          _genderController.text.trim(),
          _cityController.text.trim(),);
    }
    Navigator.of(context).pop();
  }

  Future addUserDetail(String name, String nickName, String email, String birthDate,
      String gender, String city) async{
    await FirebaseFirestore.instance.collection("Users").add({

  'name': name,
  'nick name': nickName,
  'email': email,
  'birth date': birthDate,
  'gender': gender,
  'city': city,
});
  }
  bool passwordConfirm(){
    if(_passwordController.text.trim() == _confirmPasswordController.text.trim())
      return true;
    else
      return false;
  }

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
          'Sign up',
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
          children: [
            SizedBox(
              height: 90,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Container(
                    width: 154,
                    height: 50,
                    child: TextField(
                      controller: _nameController,
                      style: GoogleFonts.rokkitt(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1d1a20)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xfcec255a)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Name',
                        fillColor: Color(0xffffffff),
                        filled: true,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 23),
                    width: 154,
                    height: 50,
                    child: TextField(
                      controller: _nickNameController,
                      style: GoogleFonts.rokkitt(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1d1a20)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xfcec255a)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Nick Name',
                        fillColor: Color(0xffffffff),
                        filled: true,
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
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: _emailController,
                style: GoogleFonts.rokkitt(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  height: 1.1375,
                  color: Colors.black,
                ),

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff1d1a20)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfcec255a)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Email',
                  fillColor: Color(0xffffffff),
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: _passwordController,
                style: GoogleFonts.rokkitt(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  height: 1.1375,
                  color: Colors.black,
                ),

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff1d1a20)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfcec255a)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Password',
                  fillColor: Color(0xffffffff),
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              height: 50,
              width: double.infinity,
              child: TextField(
                controller: _confirmPasswordController,
                style: GoogleFonts.rokkitt(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  height: 1.1375,
                  color: Colors.black,
                ),

                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xff1d1a20)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xfcec255a)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Confirm Password',
                  fillColor: Color(0xffffffff),
                  filled: true,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Row(
                children: [
                  Container(
                    width: 154,
                    height: 50,
                    child: TextField(
                      controller: _birthDateController,
                      style: GoogleFonts.rokkitt(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1d1a20)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xfcec255a)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Birth Date',
                        fillColor: Color(0xffffffff),
                        filled: true,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 23),
                    width: 154,
                    height: 50,
                    child: TextField(
                      controller: _genderController,
                      style: GoogleFonts.rokkitt(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        color: Colors.black,
                      ),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff1d1a20)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xfcec255a)),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: 'Gender',
                        fillColor: Color(0xffffffff),
                        filled: true,
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
              margin: EdgeInsets.only(left: 30, right: 30),
              child: Row(children: [
                Container(
                  width: 154,
                  height: 50,
                  child: TextField(
                    controller: _cityController,
                    style: GoogleFonts.rokkitt(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      height: 1.1375,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff1d1a20)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xfcec255a)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'City',
                      fillColor: Color(0xffffffff),
                      filled: true,
                    ),
                  ),
                ),
              ]),
            ),

            SizedBox(height: 30,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50),
              child: GestureDetector(
                onTap: sign_up,
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Color(0xfc161853),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Center(
                    child: Text(
                      'Sign up',
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

            SizedBox(height: 90,),
          ],
        ),
      ),
    );
  }
}
