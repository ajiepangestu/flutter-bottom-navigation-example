import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({Key? key, this.content = ''}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
        child: Text(
          content,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
