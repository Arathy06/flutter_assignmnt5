import 'package:flutter/material.dart';
import 'package:flutterapp_assignmnt5/find.dart';

class Oddeven extends StatefulWidget {

  @override
  _OddevenState createState() => _OddevenState();
}

class _OddevenState extends State<Oddeven> {
  String s="0";
  TextEditingController n1=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Finding wheather num is odd or even"),
          ),
          body: SizedBox.expand(
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.black,Colors.white10]),
              ),
              child: Column(
                children: [
                  SizedBox(height: 30.0,),
                  TextField(
                    style: TextStyle(color: Colors.deepOrangeAccent),
                    controller: n1,
                    decoration: InputDecoration(
                        hintText: "Enter the number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        prefixIcon: Icon(Icons.account_balance)

                    ),
                  ),
                  SizedBox(height: 30.0,),
                  RaisedButton(onPressed:() {
                    var x = int.parse(n1.text);
                    if (x % 2 == 0) {
                      setState(() {
                        s = "Number is even";
                      });
                    }
                    else {
                      setState(() {
                        s = "Number is odd";
                      });
                    }
                  },
                      child:Text("CHECK")


                  ),
                  Text(s,style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.green,
                  ),),
                  SizedBox(height: 20.0,),
                  RaisedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Findme()));
                  },
                    child: Center(child: Text("BACK")),)

                ],
              ),
            ),
          ),
        )
    );
  }
}

