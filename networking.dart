import 'package:app_three/singleUser.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
class NetworkingExample extends StatefulWidget {
  const NetworkingExample({super.key});
  @override
  State<NetworkingExample> createState() => _NetworkingExampleState();
}
class _NetworkingExampleState extends State<NetworkingExample> {
  dynamic userData = '';
  @override
  void initState()  {
    // TODO: implement initState
    super.initState();
    getData();
  }
  Future<void> getData() async {
    var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
    print("user data ");
    print(response.body);
    var jsonData = json.decode(response.body);
    setState(() {
      userData = jsonData;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exmaple of Networking"),
          backgroundColor: Colors.teal, foregroundColor: Colors.white),
      body: Center(
        child: GridView.builder(
          itemCount: userData?.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1 ,
          childAspectRatio: 6/1
        ), itemBuilder: (BuildContext context , int index){
          return Card(
            child: Column(
              children: [
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/singleUser',arguments : userData[index]['id']
                    );
                  },
                  child: ListTile(
                    leading: Icon(Icons.people_alt_sharp),
                    title: Text("Name:" + userData[index]['name'].toString()),
                    subtitle: Text("Email: " + userData[index]['email'].toString()),
                  ),
                )
              ],
            ),
          );
          },
         ),
      ),
    );
  }
}
