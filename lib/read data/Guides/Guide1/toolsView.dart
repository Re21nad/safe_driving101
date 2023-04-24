import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ToolsView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final Color color;
  final String? image;

  ToolsView({required this.title, required this.subtitle, required this.description, required this.color, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
      //height: 500,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //if (image != null) Image.network(image!),
            Text(title, style: GoogleFonts.domine(fontSize: 20.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 20.0),
            Text(subtitle, style: GoogleFonts.domine(fontSize: 16.0, fontWeight: FontWeight.w700)),
            SizedBox(height: 10.0),
            Text(description, textAlign: TextAlign.center, style: GoogleFonts.rokkitt(fontSize: 14.0, fontWeight: FontWeight.w500)),
            SizedBox(height: 20,),
            if (image != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(26.0),
                child: Image.asset(
                  image!,
                  height: 150.0,
                  width: 200.0,
                  fit: BoxFit.cover,
                ),
              ),
          ],
        ),
      ),
    );
  }
}