import 'dart:js';

import 'package:app_three/products.dart';
import 'package:app_three/singleProduct.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp(),
  routes: {
    "/product-list" : (context) => ProductList(),
    "/single-product" : (context) => SingleProduct(),
  },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: 500,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Go to Product Page",style: TextStyle(
              fontSize:  25,
            ),),
            MaterialButton(onPressed: (){
              Navigator.pushNamed(context, "/product-list");
            }, child: Text("View products",style: TextStyle(
              color: Colors.white,
            ),),color: Colors.blue,)
          ],
        ),
      ),
    );
  }
}
