import 'package:flutter/material.dart';
class ProductList extends StatelessWidget {
  var products = [
    {
      "id": 1,
      "name": "Wireless Bluetooth Headphones",
      "description": "Over-ear headphones with noise-canceling feature and 20-hour battery life.",
    },
    {
      "id": 2,
      "name": "Smartphone Stand",
      "description": "Adjustable phone stand compatible with all smartphones, perfect for video calls and streaming.",
    },
    {
      "id": 3,
      "name": "Portable Charger",
      "description": "10000mAh power bank with fast charging capabilities, ideal for travelers.",
    },
    {
      "id": 4,
      "name": "Waterproof Bluetooth Speaker",
      "description": "Portable speaker with high-quality sound, IPX7 waterproof rating, and 12-hour playtime.",
    },
    {
      "id": 5,
      "name": "Smartwatch",
      "description": "Fitness tracker with heart rate monitor, GPS, and notification alerts.",
    },
    {
      'id': 6,
      "name": "Laptop Stand",
      "description": "Ergonomic aluminum stand, adjustable height and angle, compatible with laptops up to 17 inches.",
    },
    {
      "id": 7,
      "name": "Wireless Mouse",
      "description": "Ergonomic wireless mouse with USB receiver, adjustable DPI, and 18-month battery life.",
    },
    {
      "id": 8,
      "name": "Gaming Keyboard",
      "description": "Mechanical keyboard with RGB backlight, anti-ghosting, and programmable keys.",
    },
    {
      "id": 9,
      "name": "USB-C Hub",
      "description": "6-in-1 USB-C hub with HDMI, USB 3.0, SD card reader, and charging port.",
    },
    {
      "id": 10,
      "name": "Noise-Canceling Earbuds",
      "description": "True wireless earbuds with active noise-canceling, touch controls, and 24-hour playtime.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product  list "),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      ),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: (){
            Navigator.pushNamed(context, "/single-product" , arguments: { "name" : products[index]['name'] , "description" : products[index]['description'] } );
          },
          child: Container(
            child: Column(
              children: [
                Image.network("https://d2v5dzhdg4zhx3.cloudfront.net/web-assets/images/storypages/primary/ProductShowcasesampleimages/JPEG/Product+Showcase-1.jpg",height: 100,width: 100,),
                Text(products[index]['name'].toString() , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold),),
                Text("description :" + products[index]['description'].toString())
              ],
            ),
          ),
        );
      },),
    );
  }
}
