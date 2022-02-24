import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_4bhif/pages/add_contact_page.dart';

import 'contacts_details_page.dart';

class ContactsOverviewPage extends StatefulWidget {
  static const route = 'contacts-overview';

  const ContactsOverviewPage({Key? key}) : super(key: key);

  @override
  State<ContactsOverviewPage> createState() => _ContactsOverviewPageState();
}

class _ContactsOverviewPageState extends State<ContactsOverviewPage> {
  final contacts = [
    'Alfred Alder',
    'Birgit Bauer',
    'Christina Cäsar',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemBuilder: (_, index) => Card(
            child: ListTile(
              title: Text(contacts[index]),
              onTap: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(
                //     builder: (_) => ContactsDetailsPage(contacts[index]),
                //   ),
                // );
                Navigator.of(context).pushNamed(
                  ContactDetailsPage.route,
                  arguments: contacts[index],
                );
              },
            ),
          ),
          itemCount: contacts.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.of(context)
            //     .push(
            //   MaterialPageRoute(
            //     builder: (_) => AddContactsPage(),
            //   ),
            // )
            .pushNamed(AddContactsPage.route)
            .then((value) {
          setState(() {
            contacts.add(value as String);
          });
        });
      }),
    );
  }
}
