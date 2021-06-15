//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:nabulsi_app/components/components.dart';
import 'package:nabulsi_app/models/chat.dart';

class ChatScreen extends StatefulWidget {
  static const id = 'chatScreen';
  final String senderName, senderAvatar;
  const ChatScreen({
    Key key,
    this.senderName,
    this.senderAvatar,
  }) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  //FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(
        FocusNode(),
      ),
      child: Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CurvedBottomClipper(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100.0,
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 30.0,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                        child: Image.network(
                          'https://pbs.twimg.com/profile_images/922895256122740739/2D1tVz7l_400x400.jpg',
                          width: 60,
                          height: 60,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: Chat(
                senderName: widget.senderName,
                senderAvatar: widget.senderAvatar,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
