import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

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

  SizedBox MyList(String title , String desc){
    return SizedBox(
      width: 500,
      child: Card(
        child: ListTile(
          title: Text(title),
          subtitle: Text(desc),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMJIrwfN9P1UZm1YLeCXeHYuk_EQMA41Eyuw&s"),
          ),
          trailing: Icon(Icons.sentiment_satisfied),
        ),
      ),
    );
  }

  dynamic Fruits = ["mango","orange","apple","grapes","pineapple"];
  dynamic Descriptions = ["i am king of fruits " , "i have vitamin D" , "i am healty" , "i am sour" , "i am spontaneous "];

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
              alignment: AlignmentDirectional.topStart,
              margin: EdgeInsetsDirectional.all(8),
              child: ListView.builder(itemBuilder: (context,index){
                return MyList(Fruits[index],Descriptions[index]);
              },itemCount: Fruits.length,)
            ),
          ),
        ));
  }
}
