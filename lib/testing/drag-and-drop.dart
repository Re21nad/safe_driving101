import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: DragAndDrop()));
}

class DragAndDrop extends StatelessWidget {
 // const DragAndDrop({Key? key}) : super(key: key);

  Color color = Colors.black;
  @override
  Widget build(BuildContext context) {
    final ShowDragable = color == Colors.black;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [

              DragTarget<Color>(
                onAccept: (data) {
                      setState(() => color = data);
                },
                builder: (context, _, __)=> Container(

                color: color,
                width: 200,
                height: 200,
              ),),
            IgnorePointer(
              ignoring: !ShowDragable,
              child: Opacity(
                opacity: ShowDragable? 1:0,
                child: Draggable<Color>(
                  data: Colors.amber,
                  child: Container(

                    margin: EdgeInsets.only(top: 200),
                    color: Colors.amber,
                    width: 200,
                    height: 200,
                  ),
                  feedback: Container(

                    margin: EdgeInsets.only(top: 200),
                    color: Colors.amber,
                    width: 200,
                    height: 200,
                  ),
                  childWhenDragging: Container(

                    margin: EdgeInsets.only(top: 200),
                    color: Colors.grey,
                    width: 200,
                    height: 200,
                  ),

                ),
              ),
            ),
      ]
          ),
        ),
      ),
    );
  }

  void setState(Color Function() param0) {}
}
