import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({
    super.key,
    required this.contact,
  });

  final Map<String, String> contact;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print('Informacion de contacto: $contact');
      },
      child: Icon(
        Icons.info,
        color: Colors.blue,
        size: 30,
      ),
    );
  }
}