import 'package:flutter/material.dart';
import 'package:flutterapp_assignmnt5/find.dart';

class Greater extends StatefulWidget {
  @override
  _GreaterState createState() => _GreaterState();
}

class _GreaterState extends State<Greater> {
  String result="0";
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  TextEditingController num3=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Finding greatest number"),
        ),
        body: SizedBox.expand(
          child: SingleChildScrollView(
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
                    controller: num1,
                    decoration: InputDecoration(
                        hintText: "Enter first number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        prefixIcon: Icon(Icons.account_balance)

                    ),
                  ),
                  SizedBox(height: 30.0,),
                  TextField(
                    style: TextStyle(color: Colors.deepOrangeAccent),
                    controller: num2,
                    decoration: InputDecoration(
                        hintText: "Enter second number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        prefixIcon: Icon(Icons.account_balance)

                    ),
                  ),
                  SizedBox(height: 30.0,),
                  TextField(
                    style: TextStyle(color: Colors.deepOrangeAccent),
                    controller: num3,
                    decoration: InputDecoration(
                        hintText: "Enter third number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                        prefixIcon: Icon(Icons.account_balance)

                    ),
                  ),
                  SizedBox(height: 30.0,),
                  RaisedButton(onPressed:(){
                      var n1=int.parse(num1.text);
                      var n2=int.parse(num2.text);
                      var n3=int.parse(num3.text);
                      var n4=0;
                      if(n1<n2)
                        {
                          n4=n2;
                        }
                      else
                        {
                          n4=n1;
                        }
                      if(n4<n3)
                        {
                      setState(() {
                        result=n3.toString();
                      });
                    }
                      else {
                        setState(() {
                          result = n4.toString();
                        });
                      }
                        },

                       child:Text("FIND")


                       ),
                Text(result,style: TextStyle(
                fontSize: 20.0,
                color: Colors.green,
                ),),
               SizedBox(height: 20.0,),
                RaisedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Findme())
                  );
    },
                  child: Center(child: Text("BACK")),)

              ],
            ),
        ),
          ),
      ),
    )
    );
  }
}
