import 'package:flutter/material.dart';

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //if (image != null) Image.network(image!),
          Text(title, style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 10.0),
          Text(subtitle, style: TextStyle(fontSize: 16.0)),
          SizedBox(height: 10.0),
          Text(description, style: TextStyle(fontSize: 14.0)),
          if (image != null)
            Image.asset(
              image!,
              height: 100.0,
              width: 100.0,
              fit: BoxFit.cover,
            ),
        ],
      ),
    );
  }
}