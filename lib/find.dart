import 'package:flutter/material.dart';
import 'package:flutterapp_assignmnt5/greatest.dart';
import 'package:flutterapp_assignmnt5/odd/even.dart';
import 'package:flutterapp_assignmnt5/smallest.dart';


class Findme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(

      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.blue,Colors.redAccent])
        ),
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(height: 80.0,),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Greater()));
            },
              child: Text("CHECK1",style: TextStyle(color: Colors.black),),),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Smaller()));
            },
              child: Text("CHECK2",style: TextStyle(color: Colors.black),),),
            RaisedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Oddeven()));
            },
              child: Text("CHECK3",style: TextStyle(color: Colors.black),),),

          ],
        ),
      ),


    );
  }
}
