import 'dart:math'; // Importa la librería de matemáticas para usar Random
import 'package:flutter/material.dart';
import 'package:list_cards/data/data.dart';

class ContactState extends ChangeNotifier {
  List<Map<String, String>> contacts = Contacts;

  void addContact(Map<String, String> contact) {
    // Si no se envía una imagen, asignamos una por defecto usando una URL aleatoria entre 1 y 20
    contact['image'] ??= 'https://picsum.photos/250?image=${Random().nextInt(20) + 1}';

    contacts.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    contacts.removeAt(index);
    notifyListeners();
  }
}
