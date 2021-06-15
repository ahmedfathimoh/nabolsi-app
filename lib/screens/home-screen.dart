import 'package:flutter/material.dart';
import 'package:nabulsi_app/screens/chat-screen.dart';
import 'package:nabulsi_app/screens/user-profill-screen.dart';
import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatefulWidget {
  static const id = 'homeScreen';
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  UserProfillScreen.id,
                );
              },
            ),
            Expanded(
              child: SizedBox(),
            ),
            Center(
              child: Text(
                'موسوعة ألنابلسى',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            IconButton(
              icon: Icon(Icons.chat),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  ChatScreen.id,
                );
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: WebView(
            initialUrl: 'https://nabulsi.com/web/',
            javascriptMode: JavascriptMode.unrestricted,
          ),
        ),
      ),
    );
  }
}
