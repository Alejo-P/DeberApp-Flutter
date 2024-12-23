import 'package:flutter/material.dart';

class MessageButton extends StatelessWidget {
  const MessageButton({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('Mensaje');
      },
      child: Text(
        'Mensaje',
        style: textStyle,
      ),
    );
  }
}