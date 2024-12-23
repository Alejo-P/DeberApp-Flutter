import 'package:flutter/material.dart';

class HeaderCard extends StatelessWidget {
  const HeaderCard({
    super.key,
    required this.contactName,
    required this.contactImage
  });

  // Nombre e imagen del contacto
  final String contactName;
  final String contactImage; // Formato -> https://picsum.photos/250?image=10

  @override
  Widget build(BuildContext context) {
    return Row(
      // Fila de widgets
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(contactImage),
          radius: 25,
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
