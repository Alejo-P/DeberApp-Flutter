import 'package:flutter/material.dart';
import 'package:list_cards/widgets/buttonscard.dart';
import 'package:list_cards/widgets/descriptioncard.dart';
import 'package:list_cards/widgets/headercard.dart';

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.contact,
  });

  // Informacion del contacto
  final Map<String, String> contact;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 350,
      //margin: const EdgeInsets.all(10), // Margen de 10 en todos los lados (Fuera del contenedor)
      margin: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
          bottom:
              10), // Margen de 10 en la parte superior, izquierda y derecha (Fuera del contenedor)
      padding: const EdgeInsets.all(
          10), // Padding de 10 en todos los lados (Dentro del contenedor)
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Container(
        // Contenedor hijo
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Alineación vertical
          crossAxisAlignment: CrossAxisAlignment.start, // Alineación horizontal
          // Columna de widgets
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: HeaderCard(
                contactName: contact['name']!,
                contactImage: contact['image']!,
              ),
            ),
            Padding( // Padding para el texto
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: DescriptionCard(
                contactDescription: contact['description']!,
              ),
            ),
            Container(
              child: ButtonsCard(),
            )
          ],
        )
      ),
    );
  }
}
