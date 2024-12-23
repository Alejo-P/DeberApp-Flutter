import 'package:flutter/material.dart';

class MessageButton extends StatelessWidget {
  const MessageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('Mensaje');
      },
      child: Icon(
        Icons.message,
        color: Colors.blue,
        size: 30,
      )
    );
  }
}