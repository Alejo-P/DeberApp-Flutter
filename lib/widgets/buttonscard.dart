import 'package:flutter/material.dart';
import 'package:list_cards/widgets/callbutton.dart';
import 'package:list_cards/widgets/emailbutton.dart';
import 'package:list_cards/widgets/messagebutton.dart';

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
        CallButton(textStyle: textStyle),
        MessageButton(textStyle: textStyle),
        EmailButton(textStyle: textStyle),
      ],
    );
  }
}
