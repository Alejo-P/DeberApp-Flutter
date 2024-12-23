import 'package:flutter/material.dart';

class EmailButton extends StatelessWidget {
  const EmailButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Icon(
        Icons.email,
        color: Colors.blue,
        size: 30,
      ),
    );
  }
}