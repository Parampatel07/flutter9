import 'contactUs.dart';
import 'package:flutter/material.dart';
import 'aboutUs.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        title: Text("Example of Navigations"),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: Text("About Us"),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text("Contact Us"),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text("Home"),
                  value: 3,
                ),
              ];
            },
            onSelected: (selectedValue) {
              print("selectedValue " + selectedValue.toString());
              if (selectedValue == 1) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => AboutUs()));
              }
              else if(selectedValue == 2){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => ContactUs()));
              }
              else if(selectedValue == 3){
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              }
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}

// =================================================
aboutus.dart
import 'package:flutter/material.dart';
class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text("Example of Navigations"),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("About Us"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Contact Us"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("Home"),
                    value: 3,
                  ),
                ];
              },
              onSelected: (selectedValue) {
                print("selectedValue " + selectedValue.toString());
                if (selectedValue == 1) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AboutUs()));
                }
              },
            )
          ],
        ),
        body: Center(
          child: Container(
            alignment: Alignment.center,
            height: 400,
            width: double.infinity,
            child: Column(
              children: [
                Text("About us",style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),),
                MaterialButton(onPressed: ()=>{
                  Navigator.of(context).pop()
                } , child: Text("Back",style: TextStyle(
                  color: Colors.white,
                ),),color: Colors.blue,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// =========================================
home.dart
import 'package:flutter/material.dart';

import 'aboutUs.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text("Example of Navigations"),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("About Us"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Contact Us"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("Home"),
                    value: 3,
                  ),
                ];
              },
              onSelected: (selectedValue) {
                print("selectedValue " + selectedValue.toString());
                if (selectedValue == 1) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AboutUs()));
                }
              },
            )
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          height: 400,
          width: double.infinity,
          child: Text("Home",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}

// ==========================================
contactus.dart
import 'package:flutter/material.dart';

import 'aboutUs.dart';
class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          title: Text("Example of Navigations"),
          actions: [
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("About Us"),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text("Contact Us"),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text("Home"),
                    value: 3,
                  ),
                ];
              },
              onSelected: (selectedValue) {
                print("selectedValue " + selectedValue.toString());
                if (selectedValue == 1) {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AboutUs()));
                }
              },
            )
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          height: 400,
          width: double.infinity,
          child: Text("Contact us",style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
        ),
      ),
    );
  }
}
