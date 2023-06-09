import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:safe_driving101/Authentication_Page/log-in.dart';
import 'package:safe_driving101/read%20data/homePage.dart';

enum AuthFlowStatus { login, signUp, session }

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  AuthFlowStatus authFlowStatus = AuthFlowStatus.login;

  void _showSignUp() {
    setState(() {
      authFlowStatus = AuthFlowStatus.signUp;
    });
  }

  void _showLogin() {
    setState(() {
      authFlowStatus = AuthFlowStatus.login;
    });
  }

  void _signedIn() {
    setState(() {
      authFlowStatus = AuthFlowStatus.session;
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: StreamBuilder<User?>(
  //         stream: FirebaseAuth.instance.authStateChanges(),
  //         builder: (context, snapshot) {
  //           switch (authFlowStatus) {
  //             case AuthFlowStatus.login:
  //               return LoginScreen();
  //             case AuthFlowStatus.signUp:
  //               return signUp();
  //             case AuthFlowStatus.session:
  //               return HomePage();
  //           }
  //         }),
  //   );
  // }

@override
Widget build(BuildContext context) {
  return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return Home_Page();
          }else{
            return LoginScreen();
          }
        },
      )
  );
}
}
