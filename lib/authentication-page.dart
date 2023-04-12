import 'package:safe_driving101/log-in.dart';
import 'package:safe_driving101/sign-up.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {

  bool showLoginPage = true;

  void toggleScreen(){
    setState(() {
      showLoginPage =!showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
    // if(showLoginPage){
    //   return LoginScreen(showRegesterPage: toggleScreen);
    // }else{
    //   return signUp(showLoginPage: toggleScreen);
    // }
  }
}
