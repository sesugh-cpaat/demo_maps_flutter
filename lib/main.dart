import 'package:flutter/material.dart';
import 'package:test_1/home.dart';
import 'package:test_1/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Route App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () async {
                  // async-await and Futures
                  await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyAppTest()),
                  );
                },
                child: Text("Start App"),
              ),
            ),
          );
        }
      ),
    );
  }
}
