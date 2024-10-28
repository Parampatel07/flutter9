import 'dart:math';

import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Example of Material button '),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.notification_add),
          backgroundColor: Colors.teal,
          foregroundColor: Colors.white,
          onPressed: (){
            print("Notify from FloatingActionButton");
            toastification.show(
              context: context,
              type: ToastificationType.warning,
              style: ToastificationStyle.flatColored,
              title: Text("Notify Me...."),
              description: Text("Example of Toast and button "),
              alignment: Alignment.bottomCenter,
              autoCloseDuration: const Duration(seconds: 4),
              animationBuilder: (
                  context,
                  animation,
                  alignment,
                  child,
                  ) {
                return ScaleTransition(
                  scale: animation,
                  child: child,
                );
              },
              icon: Icon(Icons.notification_add),
              borderRadius: BorderRadius.circular(12.0),
              showProgressBar: true,
              applyBlurEffect: true,
              showIcon: false,
            );
          },
        ),
        body: ToastificationWrapper(
          child: Center(
            child: MaterialButton(
              child: Text("Notify Me"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: (){
                print("Notify.....",);
                toastification.show(
                  context: context,
                  type: ToastificationType.info,
                  style: ToastificationStyle.flatColored,
                  title: Text("Notify Me...."),
                  description: Text("Example of Toast and button "),
                  alignment: Alignment.bottomCenter,
                  autoCloseDuration: const Duration(seconds: 4),
                  animationBuilder: (
                      context,
                      animation,
                      alignment,
                      child,
                      ) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                  icon: Icon(Icons.abc),
                  borderRadius: BorderRadius.circular(12.0),
                  showProgressBar: true,
                  applyBlurEffect: true,
                  showIcon: false,
                );
              },
              onLongPress: (){
                toastification.show(
                  context: context,
                  type: ToastificationType.error,
                  style: ToastificationStyle.flatColored,
                  title: Text("Notify Me from long toast...."),
                  description: Text("Example of Toast and button "),
                  alignment: Alignment.bottomCenter,
                  autoCloseDuration: const Duration(seconds: 4),
                  animationBuilder: (
                      context,
                      animation,
                      alignment,
                      child,
                      ) {
                    return ScaleTransition(
                      scale: animation,
                      child: child,
                    );
                  },
                  icon: Icon(Icons.account_circle),
                  borderRadius: BorderRadius.circular(12.0),
                  showProgressBar: true,
                  applyBlurEffect: true,
                  showIcon: false,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

