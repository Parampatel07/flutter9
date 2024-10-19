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
            color: Colors.grey.shade100,
            child: Table(
              border: TableBorder.all(
                width: 1,
                color: Colors.deepOrange,
                style: BorderStyle.solid,
              ),
              defaultVerticalAlignment: TableCellVerticalAlignment.top,
              columnWidths: {
                0:FractionColumnWidth(0.5),
                1:FractionColumnWidth(0.3),
                2:FractionColumnWidth(0.2)
              },
              children: [
                TableRow(
                  children: [
                    Text("Name"),
                    Text("Color"),
                    Text("Stock"),
                  ] ,
                ),
                TableRow(
                  children: [
                    Text("Apple"),
                    Text("red"),
                    Text("10"),
                  ] ,
                ),
                TableRow(
                  children: [
                    Text("mango"),
                    Text("yellow"),
                    Text("30"),
                  ] ,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
