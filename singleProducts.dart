import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SingleProduct extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Data = ModalRoute.of(context)?.settings.arguments as Map ;
    return Scaffold(
      appBar: AppBar(
        title: Text("Single product"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        height: 500,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              child: Image.network("https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/primary/ProductShowcasesampleimages/JPEG/Product+Showcase-1.jpg",height: 200,width: 200,),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 10),
              child: Text(Data['name'].toString(),style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 10),
              child: Text("Description : " + Data['description'].toString()),
            ),
          ],
        ),
      ),
    );
  }
}
