import 'package:flutter/material.dart';

class Locations extends StatefulWidget {
  Locations({Key? key}) : super(key: key);

  @override
  State<Locations> createState() => _LocationsState();
}

class _LocationsState extends State<Locations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Stops"),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}