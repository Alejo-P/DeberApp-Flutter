import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    super.key,
    required this.contactName,
  });

  // Nombre del contacto
  final String contactName;

  @override
  Widget build(BuildContext context) {
    return Row(
      // Fila de widgets
      children: [
        Icon(
          Icons.account_circle,
          size: 50,
          color: Colors.red,
        ),
        SizedBox(width: 10),
        Text(
          contactName,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
