import 'package:flutter/material.dart';

class CallButton extends StatelessWidget {
  const CallButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Icon(
        Icons.call,
        color: Colors.green,
        size: 30,
      )
    );
  }
}