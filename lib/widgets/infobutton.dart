import 'package:flutter/material.dart';
import 'package:list_cards/widgets/detailcard.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({
    super.key,
    required this.contact,
  });

  final Map<String, String> contact;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return DetailCard(contact: contact);
          },
        );
      },
      child: Icon(
        Icons.info,
        color: Colors.blue,
        size: 30,
      ),
    );
  }
}
