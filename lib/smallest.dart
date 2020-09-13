import 'package:flutter/material.dart';
import 'package:flutterapp_assignmnt5/find.dart';
class Smaller extends StatefulWidget {
  @override
  _SmallerState createState() => _SmallerState();
}

class _SmallerState extends State<Smaller> {
  String res="0";
  TextEditingController n1=TextEditingController();
  TextEditingController n2=TextEditingController();
  TextEditingController n3=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Finding smallest number"),
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
                    SizedBox(height: 80.0,),
                    TextField(
                      style: TextStyle(color: Colors.deepOrangeAccent),
                      controller: n1,
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
                      controller: n2,
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
                      controller: n3,
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
                      var x=int.parse(n1.text);
                      var y=int.parse(n2.text);
                      var z=int.parse(n3.text);
                      var t=0;
                      if(x<y)
                      {
                        t=x;
                      }
                      else
                      {
                        t=y;
                      }
                      if(t<z)
                      {
                        setState(() {
                          res=t.toString();
                        });
                      }
                      else {
                        setState(() {
                          res = z.toString();
                        });
                      }
                    },

                        child:Text("FIND SMALLER")


                    ),
                    Text(res,style: TextStyle(
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
          ),
        )
    );
  }
}
