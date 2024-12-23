import 'package:flutter/material.dart';

import 'package:list_cards/data/data.dart';

class ContactState extends ChangeNotifier {
  List<Map<String, String>> contacts = Contacts;

  void addContact(Map<String, String> contact) {
    if (contact['image']==null) {
      contact['image'] = 'https://www.kindpng.com/picc/m/78-785827_user-profile-avatar-login-account-profile-user-card-icon.png';
    }

    contacts.add(contact);
    notifyListeners();
  }

  void deleteContact(int index) {
    contacts.removeAt(index);
    notifyListeners();
  }
}