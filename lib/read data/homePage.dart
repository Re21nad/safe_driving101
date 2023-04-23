import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';
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

  void _navigateBoyyumBar(int index) {
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
  Future<void> _handleRefresh() async{
    return await Future.delayed(Duration(seconds: 2));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: LiquidPullToRefresh(
            onRefresh: _handleRefresh,
            color: Colors.indigo[100],
            height: 300,
            backgroundColor: Color(0xfc161853),
            animSpeedFactor: 3,
            showChildOpacityTransition: true,
            child: _pages[_selected]),
        bottomNavigationBar: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: GNav(
              backgroundColor: Colors.white,
              //tabBackgroundColor: Colors.indigo.shade100,
              onTabChange: _navigateBoyyumBar,
              selectedIndex: _selected,
              padding: EdgeInsets.all(15),
              gap: 8,
              tabs: [
                GButton(
                  icon: Icons.menu_book_outlined,
                  text: 'Guides',
                  backgroundColor: Colors.green.shade100,
                  textStyle: GoogleFonts.domine(
                      color: Colors.green
                          .shade700), //iconActiveColor: Colors.green.shade700,
                ),
                GButton(
                  icon: Icons.ballot_outlined,
                  text: 'Laws',
                  backgroundColor: Colors.yellow.shade100,
                  textStyle: GoogleFonts.domine(
                      color: Colors.yellow
                          .shade800), //iconActiveColor: Colors.yellow.shade700,
                ),
                GButton(
                  icon: Icons.home,
                  text: "Home",
                  backgroundColor: Colors.indigo.shade100,
                  textStyle: GoogleFonts.domine(
                      color: Colors.indigo
                          .shade700), //iconActiveColor: Colors.indigo.shade700,
                ),
                GButton(
                  icon: Icons.rule,
                  text: 'Test',
                  backgroundColor: Colors.purple.shade100,
                  textStyle: GoogleFonts.domine(
                      color: Colors.purple
                          .shade700), //iconActiveColor: Colors.purple.shade700,
                ),
                GButton(
                  icon: Icons.account_circle,
                  text: 'Profile',
                  backgroundColor: Colors.red.shade100,
                  textStyle: GoogleFonts.domine(
                      color: Colors.red
                          .shade700), //iconActiveColor: Colors.red.shade700,
                ),
              ],
            ),
          ),
        )
        // BottomNavigationBar(
        //   currentIndex: _selected,
        //   onTap: _navigateBoyyumBar,
        //   type: BottomNavigationBarType.fixed,
        //   items: [
        //     BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Guides'),
        //     BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: 'Laws and Regulations'),
        //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        //     BottomNavigationBarItem(icon: Icon(Icons.rule), label: 'Test'),
        //     BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        //   ],
        // ),
        );
  }
}
