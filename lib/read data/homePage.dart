import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:safe_driving101/my-lessons.dart';
import 'package:safe_driving101/read%20data/get_user_name.dart';
import 'package:safe_driving101/read%20data/pages/guides.dart';
import 'package:safe_driving101/read%20data/pages/home.dart';
import 'package:safe_driving101/read%20data/pages/laws_and_regulations.dart';
import 'package:safe_driving101/read%20data/pages/profile.dart';
import 'package:safe_driving101/read%20data/pages/test.dart';

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home_Page()));
// }

class Home_Page extends StatefulWidget {
  // final int _selectedIndex;
  // Home_Page({required this._selectedIndex});
  //const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {

  int _selected = 2;

  void _navigateBoyyumBar(int index){
    setState(() {
      _selected = index;
    });
  }

   List<Widget> _pages = [
    Guides(),
    LawsAndRegulations(),
    Home(),
    Test(),
    Profile_(),

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_selected],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: _navigateBoyyumBar,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Guides'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Laws and Regulations'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.rule), label: 'Test'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
      ),
    );

  }
}
