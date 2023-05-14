import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:safe_driving101/Authentication_Page/reset-password.dart';
import 'package:safe_driving101/Authentication_Page/sign-up.dart';

class LoginScreen extends StatefulWidget {
  //final VoidCallback showRegesterPage;
  const LoginScreen({
    Key? key,
    //required this.showRegesterPage,
  }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool _passwordVisible = false;
  bool loggedIn = false;
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

    Future<void> signIn() async {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Logging In'),
            content: Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(),
              ],
            ),
          );
        },
      );

      try {
        loggedIn = true;
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text.trim(),
          password: _passController.text.trim(),
        );
        Navigator.of(context).pop(); // Dismiss the loading dialog
      } catch (error) {
        Navigator.of(context).pop(); // Dismiss the loading dialog
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Login Failed'),
              content: Text('An error occurred while logging in: $error'),
              actions: [
                TextButton(
                  child: Text('OK'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(12, 70, 0, 69),
          // For Log in in the top
          width: double.infinity,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                  // For Log in in the top

                  child: Container(
                    margin: EdgeInsets.fromLTRB(1, 0, 11, 0),
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.domine(
                        fontSize: 27,
                        fontWeight: FontWeight.w700,
                        height: 1.14,
                        letterSpacing: -0.7000000834,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
                Container(
                  // autogroupzezhzXw (BEtiZgs6HKbhV22iHRZEzH)
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  // For the rectangle (E-mail)
                  width: 397,
                  height: 425,
                  child: Stack(
                    children: [
                      Positioned(
                        // Safe Driving 101 image
                        // safedriving1011HJ5 (1:359)
                        left: 0,
                        top: 0,
                        child: Align(
                          child: SizedBox(
                            width: 397,
                            height: 338,
                            child: Image.asset(
                              'images/safe-driving101-1-fLh.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),


                      Container(
                        margin: EdgeInsets.fromLTRB(0, 305, 13, 0),
                        padding: const EdgeInsets.symmetric(horizontal: 26.0),
                        height: 50,
                        child: TextField(
                          controller: _emailController,
                          style: GoogleFonts.rokkitt(
                            //Color(0xffc2c5bc),
                            textStyle: TextStyle(
                              fontSize: 17.0, // Set font size
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            labelText: 'E-mail',

                            //labelStyle: TextStyle(color: Color(0xfcec255a)),
                            //hintStyle: TextStyle(color: Colors.grey),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff1d1a20)),
                              borderRadius: BorderRadius.circular(10),
                              //color: Color(0xffffffff),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfcec255a)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            //hintText: 'E-mail',
                            fillColor: Color(0xffffffff),
                            filled: true,
                          ),
                        ),
                      ),


                      Container(
                        margin: EdgeInsets.fromLTRB(0, 375, 13, 0),
                        padding: const EdgeInsets.symmetric(horizontal: 26.0),
                        height: 50,
                        child: TextField(
                          // obscureText: true,
                          controller: _passController,
                          obscureText: !_passwordVisible,
                          style: GoogleFonts.rokkitt(
                            //Color(0xffc2c5bc),
                            textStyle: TextStyle(
                              fontSize: 17.0, // Set font size
                            ),
                          ),
                          decoration: InputDecoration(
                            labelText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),
                              onPressed: _togglePasswordVisibility,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xff1d1a20)),
                              borderRadius: BorderRadius.circular(10),
                              //color: Color(0xffffffff),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xfcec255a)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            //hintText: 'Password',
                            fillColor: Color(0xffffffff),
                            filled: true,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),


                Container(
                  // forgetpasswordawP (1:356)
                  margin: EdgeInsets.fromLTRB(0, 0, 10, 20),
                  child: TextButton(
                    // The Sign in Button
                    // signupTnD (1:358)
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ResetPass()));

                      //Navigator.of(context).pushReplacementNamed('signUpScreen');
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Text(
                      'Forget Password?',
                      style: GoogleFonts.rokkitt(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.1375,
                        color: Color(0xff686a66),
                      ),
                    ),
                  ),

                ),


                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: GestureDetector(
                    onTap: signIn,
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Color(0xfc161853),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(
                        child: Text(
                          'Log in',
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


                Container(
                  // autogroupzawfS6R (BEtiym1KHwPyxLDW5fzawf)
                  margin: EdgeInsets.fromLTRB(32, 0, 70, 0),
                  width: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        // The text
                        // donthaveanaccountMUH (1:357)
                        'Don’t have an account? ',
                        style: GoogleFonts.rokkitt(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          height: 1.1375,
                          color: Color(0xff686a66),
                        ),
                      ),
                      TextButton(
                        // The Sign in Button
                        // signupTnD (1:358)
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => signUp()));

                          //Navigator.of(context).pushReplacementNamed('signUpScreen');
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: Text(
                          'Sign up',
                          style: GoogleFonts.rokkitt(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            height: 1.1375,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    // );
  }
}
