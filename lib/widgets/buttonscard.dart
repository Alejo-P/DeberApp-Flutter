import 'package:flutter/material.dart';
import 'package:list_cards/widgets/callbutton.dart';
import 'package:list_cards/widgets/deletebutton.dart';
import 'package:list_cards/widgets/emailbutton.dart';
import 'package:list_cards/widgets/messagebutton.dart';

class ButtonsCard extends StatelessWidget {
  const ButtonsCard({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      // Alineacion de los botones
      mainAxisAlignment: MainAxisAlignment.spaceAround, // Espacio entre los botones
      children: [
        CallButton(),
        MessageButton(),
        EmailButton(),
        DeleteButton(),
      ],
    );
  }
}
