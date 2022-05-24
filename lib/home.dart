import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Route App"),
      ),
      body: Center(
        child: Text("This is a placeholder\nfor\nMy Route App!", textAlign: TextAlign.center),
      ),
    );
  }
}