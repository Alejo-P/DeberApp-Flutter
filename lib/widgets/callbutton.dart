import 'package:flutter/material.dart';

class CallButton extends StatelessWidget {
  const CallButton({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Llamar',
        style: textStyle,
      ),
    );
  }
}