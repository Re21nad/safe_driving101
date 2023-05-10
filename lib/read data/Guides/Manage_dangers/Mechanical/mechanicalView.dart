import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MechanicalView extends StatelessWidget {
  // const MechanicalView({Key? key}) : super(key: key);
  final String title;
  final String? image;
  final String description;
  final Color color;

  MechanicalView({required this.title, this.image, required this.description, required this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 23),
      width: double.infinity,
      //height: 150,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(26.0),
        boxShadow: [
          BoxShadow(
            color: Color(0x3f000000),
            offset: Offset(2, 3),
            blurRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Text(title, style: GoogleFonts.domine(fontSize: 20.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 10.0),
          if (image != null)
            ClipRRect(
              borderRadius: BorderRadius.circular(26.0),
              child: Image.asset(
                image!,
                height: 110.0,
                width: 180.0,
                fit: BoxFit.cover,
              ),
            ),
          SizedBox(height: 20,),
          Container(margin: EdgeInsets.symmetric(horizontal: 15),child: Text(description, textAlign: TextAlign.left, style: GoogleFonts.rokkitt(fontSize: 14.0, fontWeight: FontWeight.w500))),
          SizedBox(height: 30,),

        ],
      ),
    );
  }
}
