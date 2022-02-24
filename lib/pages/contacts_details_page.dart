import 'package:flutter/material.dart';

class ContactDetailsPage extends StatelessWidget {
  static const route = '/contact-details';

  //final String contact;

  ContactDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final contact = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text(contact)),
    );
  }
}
