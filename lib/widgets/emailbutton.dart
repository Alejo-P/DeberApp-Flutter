import 'package:flutter/material.dart';

class EmailButton extends StatelessWidget {
  const EmailButton({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Correo',
        style: textStyle,
      )
    );
  }
}