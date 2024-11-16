import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class NetworkingExample extends StatefulWidget {
  const NetworkingExample({super.key});
  @override
  State<NetworkingExample> createState() => _NetworkingExampleState();
}
class _NetworkingExampleState extends State<NetworkingExample> {
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
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Exmaple of Networking"),
          backgroundColor: Colors.teal, foregroundColor: Colors.white),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          color: Colors.teal,
        ),
      ),
    );
  }
}
