import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Test extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Test',
        style: GoogleFonts.domine(
          fontSize: 50,
        ),),
    );
  }
}