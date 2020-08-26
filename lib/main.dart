import 'package:flutter/material.dart';
import 'Screen/NoteDetails.dart';
import 'Screen/NoteList.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "NotKipper App",
      debugShowCheckedModeBanner: false,

      theme: new ThemeData(
        primaryColor: Colors.teal
      ),

      home: NoteList(),
    );
  }
}
