import 'package:flutter/material.dart';

import 'package:list_cards/data/data.dart';

class ContactState extends ChangeNotifier {
  List<Map<String, String>> contacts = Contacts;

  void addContact(Map<String, String> contact) {
    contacts.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    contacts.removeAt(index);
    notifyListeners();
  }
}