import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SearchScreen()));
}
class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> searchData = [
    'Driving Basics',
    'Parking Techniques',
    'Defensive Driving',
    'Traffic Rules',
  ];

  List<String> searchResults = [];

  void search(String query) {
    setState(() {
      if (query.isNotEmpty) {
        searchResults = searchData
            .where((data) => data.toLowerCase().contains(query.toLowerCase()))
            .toList();
      } else {
        searchResults = List.from(searchData);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    search('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          onChanged: search,
          decoration: InputDecoration(
            hintText: 'Search...',
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: searchResults.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              searchResults[index],
              style: TextStyle(fontSize: 16),
            ),
          );
        },
      ),
    );
  }
}
