import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UserProfillScreen extends StatefulWidget {
  static const id = 'userProfillScreen';
  const UserProfillScreen({Key key}) : super(key: key);

  @override
  _UserProfillScreenState createState() => _UserProfillScreenState();
}

class _UserProfillScreenState extends State<UserProfillScreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_auth.currentUser.displayName),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                _auth.currentUser.displayName,
                style: TextStyle(),
              ),
            ),
            Container(
              width: 120.0,
              height: 120.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60.0),
                  image: DecorationImage(
                    image: NetworkImage(
                      _auth.currentUser.photoURL,
                    ),
                  )),
            ),
            Text(
              _auth.currentUser.email,
            ),
          ],
        ),
      ),
    );
  }
}
