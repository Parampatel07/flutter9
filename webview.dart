import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  InAppWebViewController? webViewController;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Example of WebView"),
          backgroundColor: Colors.teal,
        ),
        body: Container(
          child:InAppWebView(
            initialUrlRequest: URLRequest(url: WebUri.uri(Uri.parse("https://chatgpt.com/"))),
            onWebViewCreated: (controller) {
              webViewController = controller;
            },
            onLoadStart: (controller, url) {
              print("Loading: $url");
            },
            onLoadStop: (controller, url) async {
              print("Finished loading: $url");
            },
          ),
        ),
      ),
    );
  }
}
