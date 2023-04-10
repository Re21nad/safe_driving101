import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Datee()));
}
class Datee extends StatefulWidget {
  const Datee({Key? key}) : super(key: key);

  @override
  State<Datee> createState() => _DateeState();
}

class _DateeState extends State<Datee> {

  DateTime date = DateTime.now();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white38,
     body: SingleChildScrollView(
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [

             Text('${date.day}/${date.month}/${date.year}',
             style: TextStyle(fontSize: 30),),

             const SizedBox(height: 10,),

             ElevatedButton(onPressed: () async {
               DateTime? newDate = await showDatePicker(
                 context: context,
                   initialDate: date,
                   firstDate: DateTime(2000),
                   lastDate: DateTime(2100),
               );
               if(newDate == null){
                 return;
               }
               setState((){
                date = newDate;
               });
             }, child: const Text('Select a date',
               style: TextStyle(fontSize: 30),
             ),

             ),
           ],
         ),
       ),
     ),
   );
  }

}