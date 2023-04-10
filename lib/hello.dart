import 'package:flutter/material.dart';
//import 'dart:ui';
//import 'package:flutter/src/widgets/media_query.dart';

void main() {
  runApp(hello());
}

class hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //double baseWidth = 393;
    //double fem = MediaQuery.of(context).size.width / baseWidth;
    //double ffem = fem * 0.97;
    return MaterialApp(
        home: Scaffold(
          body: Center(
            child: Image(
              image: AssetImage('images/safe-driving101-1.png'),
            ),

            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget> [
            //           Container(
            //             padding: EdgeInsets.fromLTRB(0*fem, 157*fem, 0*fem, 297*fem),
            //             width: double.infinity,
            //             height: 852*fem,
            //             decoration: BoxDecoration (
            //             color: Color(0xffffffff),
            //             ),
            //             child: Align(
            //             // safedriving1011kvq (1:50)
            //               alignment: Alignment.centerLeft,
            //               child: SizedBox(
            //                 width: 397*fem,
            //                 height: 398*fem,
            //                 child: Image.asset(
            //                   'lib/assets/assets/page-1/images/safe-driving101-1.png',
            //                   fit: BoxFit.cover,
            //                   ),
            //                 ),
            //               ),
            //           ),
            //         ],
            //       ),
                ),
            ),
         );
  }

}