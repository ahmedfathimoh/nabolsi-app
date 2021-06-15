import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nabulsi_app/screens/chat-screen.dart';
import 'package:nabulsi_app/screens/home-screen.dart';
import 'package:nabulsi_app/screens/login-screen.dart';
import 'package:nabulsi_app/screens/user-profill-screen.dart';
import 'package:nabulsi_app/screens/welcome-screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Nabulsi(),);
}

class Nabulsi extends StatelessWidget {
  const Nabulsi({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'موسوعة ألنابلسى',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        HomeScreen.id: (context) => HomeScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        UserProfillScreen.id: (context) => UserProfillScreen(),
        LoginScreen.id: (context) => LoginScreen(),
      },
    );
  }
}
