import 'package:flutter/material.dart';

class TextBottonTheme extends StatelessWidget {
  const TextBottonTheme({
    
    
    @required this.color,
    @required this.txt,
    @required this.onPressed,
  }) ;

  
  final Color color;
  final String txt;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.07,
      width: size.width * 0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0), color: color),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          txt,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
