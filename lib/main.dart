import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myapp(),
    ),
  );
}

class myapp extends StatefulWidget {
  @override
  _myappState createState() => _myappState();
}

class _myappState extends State<myapp> {
  int leftdicenumber=2;
  int rightdicenumber=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text('Dice App'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                  onPressed: (){
                    setState(() {
                      leftdicenumber=Random().nextInt(5)+2;
                    });
                  },
                  child: Image.asset('images/Screenshot ($leftdicenumber).png'),),
            ),
            Expanded(
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    rightdicenumber=Random().nextInt(5)+2;
                  });
                },
                child: Image.asset('images/Screenshot ($rightdicenumber).png'),),
            ),
          ],
        ),
      ),
    );
  }
}

