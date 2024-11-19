import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SingleUser extends StatefulWidget {
  const SingleUser({super.key});
  @override
  State<SingleUser> createState() => _SingleUserState();
}
class _SingleUserState extends State<SingleUser> {
  dynamic id = 0 ;
  dynamic singleUser = "";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // id = ModalRoute.of(context)?.settings.arguments ;
    // print("id" + id.toString());

  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    getSingleUserData();
  }

  Future<void> getSingleUserData() async {
    id = ModalRoute.of(context)?.settings.arguments ;
    print("id" + id.toString());
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users/"+id.toString()));
    print("response " );
    print(response.body);
    setState(() {
      singleUser = json.decode(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(singleUser['name']),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top :20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                child: Image.network("https://static.vecteezy.com/system/resources/thumbnails/000/439/863/small/Basic_Ui__28186_29.jpg"),
              ),
            ),
            Padding(padding: EdgeInsets.all(10),
            child: Container(
              child: Text("Username : " + singleUser['username']	),
            ),),
            Padding(padding: EdgeInsets.all(10),
            child: Container(
              child: Text("Email : " + singleUser['email']),
            ),),
            Padding(padding: EdgeInsets.all(10),
            child: Container(
              child: Text("Phone : " + singleUser['phone']	),
            ),),
            Padding(padding: EdgeInsets.all(10),
            child: Container(
              child: Text("Website : "+singleUser['website']	),
            ),),
          ],
        ),
      ),
    );
  }
}
