import 'package:flutter/material.dart';

class ButtonsCard extends StatelessWidget {
  const ButtonsCard({super.key,});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.blue,
      fontSize: 18,
    );
    return Row(
      // Alineacion de los botones
      mainAxisAlignment: MainAxisAlignment.spaceAround, // Espacio entre los botones
      children: [
        TextButton(
          onPressed: () {},
          child: const Text(
            'Llamar',
            style: textStyle,
          ),
        ),
        TextButton(
          onPressed: () {
            print('Mensaje');
          },
          child: const Text(
            'Mensaje',
            style: textStyle,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'Correo',
            style: textStyle,
          )
        ),
      ],
    );
  }
}