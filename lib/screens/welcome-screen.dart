import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nabulsi_app/screens/home-screen.dart';
import 'package:nabulsi_app/screens/login-screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const id = 'welcomeScreen';
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      FirebaseAuth _auth = FirebaseAuth.instance;
      if (_auth.currentUser != null) {
        Navigator.pushNamed(context, HomeScreen.id);
      } else {
        Navigator.pushNamed(context, LoginScreen.id);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          body: Container(
            height: size.height,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  child: Image.asset(
                    'assets/images/main_top.png',
                    fit: BoxFit.cover,
                    width: size.width / 3,
                  ),
                  top: 0,
                  left: 0,
                ),
                Positioned(
                  child: Image.asset(
                    'assets/images/main_bottom.png',
                    fit: BoxFit.cover,
                    width: size.width / 2,
                  ),
                  bottom: 0,
                  left: 0,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'موسوعة ألنابلسى',
                        style: TextStyle(
                          fontSize: 34.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        'assets/images/NabulsiRounded.png',
                        fit: BoxFit.cover,
                        width: size.width / 2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
