import 'package:flutter/material.dart';
import 'package:list_cards/widgets/callbutton.dart';
import 'package:list_cards/widgets/deletebutton.dart';
import 'package:list_cards/widgets/infobutton.dart';
import 'package:list_cards/widgets/messagebutton.dart';

class ButtonsCard extends StatelessWidget {
  const ButtonsCard({
    super.key,
    required this.contact,
    required this.index,
  });

  final Map<String, String> contact;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      // Alineacion de los botones
      mainAxisAlignment: MainAxisAlignment.spaceAround, // Espacio entre los botones
      children: [
        Tooltip(
          message: 'Llamar a esta persona',
          child: CallButton()
        ),
        Tooltip(
          message: 'Enviar mensaje de texto',
          child: MessageButton()
        ),
        Tooltip(
          message: 'Información de contacto',
          child: InfoButton(
            contact: contact
          )
        ),
        Tooltip(
          message: 'Eliminar contacto',
          child: DeleteButton(
            index: index
          )
        ),
      ],
    );
  }
}
