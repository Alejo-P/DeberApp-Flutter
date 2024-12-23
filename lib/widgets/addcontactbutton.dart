import 'package:flutter/material.dart';
// Se importa la lista de contactos
import 'package:list_cards/data/data.dart';

class AddContactButton extends StatelessWidget {
  const AddContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => _showAddContactDialog(context),
      backgroundColor: Colors.red[300],
      child: const Icon(Icons.add),
    );
  }

  void _showAddContactDialog(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    String? name;
    String? phone;
    String? email;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Agregar contacto'),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Nombre'),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, ingresa un nombre.';
                      }
                      return null;
                    },
                    onSaved: (value) => name = value,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Número de teléfono'),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, ingresa un número de teléfono.';
                      }
                      return null;
                    },
                    onSaved: (value) => phone = value,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Correo electrónico'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, ingresa un correo electrónico.';
                      }
                      return null;
                    },
                    onSaved: (value) => email = value,
                  ),
                ],
              ),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Contacts.add({
                    'name': name!,
                    'phone': phone!,
                    'email': email!,
                  });
                  Navigator.pop(context);
                }
              },
              child: const Text('Agregar'),
            ),
          ],
        );
      },
    );
  }
}
