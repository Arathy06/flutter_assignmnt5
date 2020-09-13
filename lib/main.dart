import 'package:flutter/material.dart';
import 'package:flutterapp_assignmnt5/find.dart';

void main()
{
  runApp(Myhome());
}



class Myhome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Checking Values"),
        ),
        body: Findme(),
      ),
    );
  }
}