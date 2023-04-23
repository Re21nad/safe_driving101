import 'package:flutter/material.dart';

// class CardView extends StatelessWidget {
//
//   String? text;
//   final Color color;
//
//   CardView({required this.text, required this.color});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Text(text!),
//       color: color,
//     );
//   }
// }

class CardView extends StatelessWidget {
  final String title;
  final String subtitle;
  final String description;
  final Color color;

  CardView({required this.title, required this.subtitle, required this.description, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 10.0),
          Text(subtitle, style: TextStyle(fontSize: 16.0)),
          SizedBox(height: 10.0),
          Text(description, style: TextStyle(fontSize: 14.0)),
        ],
      ),
    );
  }
}





