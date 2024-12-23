import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Icon(
        Icons.delete,
        color: Colors.red,
        size: 30,
      ),
    );
  }
}