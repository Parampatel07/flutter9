import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  var colorList = [
    {"color_name": "Red", "color_description": "Bright red color", "color_icon": Colors.red},
    {"color_name": "Green", "color_description": "Nature green color", "color_icon": Colors.green},
    {"color_name": "Blue", "color_description": "Deep blue color", "color_icon": Colors.blue},
    {"color_name": "Orange", "color_description": "Vibrant orange color", "color_icon": Colors.orange},
    {"color_name": "Purple", "color_description": "Rich purple color", "color_icon": Colors.purple},
    {"color_name": "Yellow", "color_description": "Bright yellow color", "color_icon": Colors.yellow},
    {"color_name": "Pink", "color_description": "Soft pink color", "color_icon": Colors.pink},
    {"color_name": "Cyan", "color_description": "Cool cyan color", "color_icon": Colors.cyan},
    {"color_name": "Teal", "color_description": "Balanced teal color", "color_icon": Colors.teal},
    {"color_name": "Amber", "color_description": "Warm amber color", "color_icon": Colors.amber},
    {"color_name": "Indigo", "color_description": "Deep indigo color", "color_icon": Colors.indigo},
    {"color_name": "Lime", "color_description": "Fresh lime color", "color_icon": Colors.lime},
    {"color_name": "Brown", "color_description": "Earthy brown color", "color_icon": Colors.brown},
    {"color_name": "Grey", "color_description": "Neutral grey color", "color_icon": Colors.grey},
    {"color_name": "Blue Grey", "color_description": "Muted blue-grey color", "color_icon": Colors.blueGrey},
    {"color_name": "Light Blue", "color_description": "Light blue shade", "color_icon": Colors.lightBlue},
    {"color_name": "Light Green", "color_description": "Soft green shade", "color_icon": Colors.lightGreen},
    {"color_name": "Deep Orange", "color_description": "Dark and rich orange", "color_icon": Colors.deepOrange},
    {"color_name": "Deep Purple", "color_description": "Dark and intense purple", "color_icon": Colors.deepPurple},
    {"color_name": "Black", "color_description": "Classic black color", "color_icon": Colors.black},
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body:CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text("Example of sliver appbar "),
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                pinned: true,
              ),
              SliverList(delegate: SliverChildBuilderDelegate(
                  (context,index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        child: ListTile(
                          title: Text(colorList[index]['color_name'].toString()),
                          subtitle:Text(colorList[index]['color_description'].toString()),
                          leading: CircleAvatar(
                            backgroundColor: colorList[index]['color_icon'] as Color,
                          ),
                        ),
                      ),
                    );
                  },
                  childCount : colorList.length ,
              ))
            ],
          ),
        ));
  }
}
