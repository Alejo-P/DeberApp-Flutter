import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:list_cards/widgets/usercard.dart';
import 'package:list_cards/states/contactstate.dart';

class ListCards extends StatelessWidget {
  const ListCards({super.key,});

  @override
  Widget build(BuildContext context) {
    var state = context.watch<ContactState>();
    var contacts = state.contacts;
    return ListView.builder(
      itemCount:  contacts.length, // Cantidad de elementos
      itemBuilder: (context, index) { // Funcion que se ejecuta por cada elemento
        return UserCard(
          // Se envia el contacto al widget UserCard
          contact: contacts[index],
          index: index,
        );
      },
    );
  }
}
