import 'package:flutter/material.dart';

class DescriptionCard extends StatelessWidget {
  const DescriptionCard({
    super.key,
    required this.contactDescription,
  });

  // Descripción del contacto
  final String contactDescription;

  @override
  Widget build(BuildContext context) {
    return Text(
      contactDescription,
      maxLines: 2,
      overflow: TextOverflow.fade,
      style: TextStyle(
        fontSize: 16,
        color: Colors.grey[600],
      ),
    );
  }
}