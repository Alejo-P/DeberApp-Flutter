import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:list_cards/states/contactstate.dart';


class DeleteButton extends StatelessWidget {
  const DeleteButton({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    var state = context.watch<ContactState>();

    return TextButton(
      onPressed: () {
        state.deleteContact(index);
      },
      child: Icon(
        Icons.delete,
        color: Colors.red,
        size: 30,
      ),
    );
  }
}