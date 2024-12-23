import 'package:flutter/material.dart';
import 'package:list_cards/widgets/addcontactbutton.dart';
import 'package:list_cards/widgets/listcards.dart';

// Importar el estado
import 'package:provider/provider.dart';
import 'package:list_cards/states/contactstate.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var state = context.watch<ContactState>();
    var contacts = state.contacts;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de contactos'),
        backgroundColor: Colors.red[300],
      ),
      body: contacts.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.person_off,
                    size: 80,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'No hay contactos',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    '¡Agrega un contacto usando el botón "+"!',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          : ListCards(),
      backgroundColor: Colors.grey[300],
      floatingActionButton: Tooltip(
        message: 'Agregar contacto',
        child: AddContactButton(),
      ),
    );
  }
}
