import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  Widget MyContainer(String digit){
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
      child: Text(digit,style: TextStyle(
        fontSize: 20,
      ),),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: ()=>{},
          child: FlutterLogo(),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Wrap Example"),
        ),
        body: Material(
          child: SizedBox(
            height: 500,
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 10,
              runSpacing: 10,
              // alignment: WrapAlignment.spaceEvenly  ,
              runAlignment: WrapAlignment.spaceAround,
              children: [
                MyContainer("1"),
                MyContainer("2"),
                MyContainer("3"),
                MyContainer("4"),
                MyContainer("5"),
                MyContainer("6"),
              ],
            ),
          ),
        )
      ),
    );
  }
}
