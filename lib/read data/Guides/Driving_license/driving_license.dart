import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// void main() {
//   runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Driving_license()));
// }

class Driving_license extends StatefulWidget {
  const Driving_license({Key? key}) : super(key: key);

  @override
  State<Driving_license> createState() => _Driving_licenseState();
}

class _Driving_licenseState extends State<Driving_license> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Color(0xfcffffff),
      // change to your desired color
      centerTitle: true,
      elevation: 0.0,
      title: Text(
        'Driving License',
        textAlign: TextAlign.center,
        style: GoogleFonts.domine(
          fontSize: 19,
          fontWeight: FontWeight.w700,
          height: 1.14,
          letterSpacing: -0.7000000834,
          color: Color(0xff000000),
        ),
      ),

      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    ),
    backgroundColor: Colors.white,
    );
  }
}
