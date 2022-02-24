import 'package:flutter/material.dart';

class AddContactsPage extends StatelessWidget {
  static const route = '/add-contacts';

  const AddContactsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('New contact')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          onSubmitted: (input) => Navigator.of(context).pop(input),
        ),
      ),
    );
  }
}
