import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
    required this.imageContact,
  });

  // Imagen del contacto
  final String imageContact;

  @override
  Widget build(BuildContext context) {
    return Image.network(
      imageContact,
      width: double.infinity,
      height: 150,
      fit: BoxFit.cover,
    );
  }
}