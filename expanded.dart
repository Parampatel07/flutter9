import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Material(
        child: Center(
          child: Container(
            height: 500,
            width: 400,
            color: Colors.teal,
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    child: Text("1",textAlign: TextAlign.center,),
                    width: 100,
                    color: Colors.yellow,
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    child: Text("2"),
                    width: 100,
                    color: Colors.red,
                  ),
                ),Container(
                  alignment: AlignmentDirectional.center,
                  child: Text("3"),
                  width: 100,
                  color: Colors.cyanAccent,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
