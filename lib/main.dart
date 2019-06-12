import 'package:flutter/material.dart';

void main() => runApp(Xylo());

class Xylo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Xylo",
      home: HomeApp()
    );   
  }
}

class HomeApp extends StatefulWidget{
  @override
  _HomeAppState createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp>{

  Widget block(i,color){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          print("Pressed $i");
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("Xylo"),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              block(1,Colors.purple),
              block(2,Colors.indigo),
              block(3,Colors.blue),
              block(4,Colors.green),
              block(5,Colors.yellow),
              block(6,Colors.orange),
              block(7,Colors.red),
            ],
          ),
        ),
      );
  } 
}