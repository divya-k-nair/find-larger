import 'package:find_larger/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Large extends StatefulWidget {
  @override
  _LargeState createState() => _LargeState();
}

class _LargeState extends State<Large> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  @override
  int _large=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.tealAccent,
            appBar: AppBar(
              title: Text("CHECK"),
            ),
            body:SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    TextField(
                      controller: num1,
                      decoration: InputDecoration(
                          hintText: "Number 1",
                          labelText: "Number 1",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    TextField(
                      controller: num2,
                      decoration: InputDecoration(
                          hintText: "Number 2",
                          labelText: "Number 2",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                      ),
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: RaisedButton(
                        color: Colors.orange,
                        onPressed: (){
                          var getNumber1=int.parse(num1.text);
                          var getNumber2=int.parse(num2.text);
                          print(getNumber1);
                          print(getNumber2);
                          setState(() {
                          _large=  (getNumber1>getNumber2) ? getNumber1:getNumber2;

                          });
                          print(_large);



                        },

                        child: Text("LARGEST",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),

                      ),
                    ),
                    Text(_large.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),

                    ),

                    SizedBox(height: 20,),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: RaisedButton(
                        color: Colors.orange,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>App()));
                        },
                        child: Text("BACK TO HOME",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                          ),
                        ),

                      ),
                    ),
                  ],//children
                ),
              ),
            )
        )
    );
  }
}


