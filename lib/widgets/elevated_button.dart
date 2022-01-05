import 'package:dicoding/pages/homepage.dart';
import 'package:flutter/material.dart';

class ClickButton extends StatelessWidget {
  final String text;
  final Color color;

  const ClickButton({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Homepage()));
      },
      child: Text(text),
      style: ElevatedButton.styleFrom(primary: color),
    );
  }
}
