import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.

  Widget MyContainer(String digit) {
    return Container(
      height: 100,
      width: 100,
      color: Colors.red,
      child: Text(
        digit,
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  SizedBox MyList(){
    return SizedBox(
      width: 500,
      child: Card(
        child: ListTile(
          title: Text("Mango"),
          subtitle: Text("King of fruits"),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMJIrwfN9P1UZm1YLeCXeHYuk_EQMA41Eyuw&s"),
          ),
          trailing: Icon(Icons.sentiment_satisfied),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          appBar: AppBar(
              title: Text("List view demo"),
              backgroundColor: Colors.teal,
              foregroundColor: Colors.white),
          body: Material(
            child: Container(
              width: 500,
              height: 75,
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsetsDirectional.all(8),
              child: ListView(
                scrollDirection : Axis.horizontal,
                children: [
                  MyList(),
                  MyList(),
                  MyList(),
                  MyList(),
                  MyList(),
                  MyList(),
                  MyList(),
                  MyList(),
                  MyList(),
                  MyList(),
                  MyList(),
                  MyList(),
                ],
              ),
            ),
          ),
        ));
  }
}
