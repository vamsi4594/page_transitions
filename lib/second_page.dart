import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Page'),),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30),
        child: ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: Text('Go Back', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),),
        ),
      ),
    );
  }
}
