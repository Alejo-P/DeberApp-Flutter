import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// Se importa la lista de contactos
import 'package:list_cards/states/contactstate.dart';

class AddContactButton extends StatelessWidget {
  const AddContactButton({super.key});

  @override
  Widget build(BuildContext context) {
    var state = context.watch<ContactState>();
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    String? name;
    String? phone;
    String? email;
    return FloatingActionButton(
      onPressed: () => {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Agregar contacto'),
              content: SingleChildScrollView(
                child: Form(
                  key: formKey,
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
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      state.addContact({
                        'name': name!,
                        'phone': phone!,
                        'email': email!,
                      });
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text('Agregar'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancelar'),
                ),
              ],
            );
          }
        )
      },
      backgroundColor: Colors.red[300],
      child: const Icon(Icons.add),
    );
  }
}
