import 'package:flutter/material.dart';
import 'package:list_cards/widgets/usercard.dart';
import 'package:list_cards/data/data.dart';

class ListCards extends StatelessWidget {
  const ListCards({super.key,});

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
      itemCount: Contacts.length, // Cantidad de elementos
      itemBuilder: (context, index) { // Funcion que se ejecuta por cada elemento
        return UserCard(
          // Se envia el contacto al widget UserCard
          contact: Contacts[index],
        );
      }
    );
  }
}
