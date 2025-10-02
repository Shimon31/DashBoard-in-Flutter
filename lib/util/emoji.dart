import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emoji extends StatelessWidget {

  final String emoji;

  const Emoji({super.key, required this.emoji});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.blue[700],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: Text(emoji,style: TextStyle(fontSize: 20))),
    );
  }
}
