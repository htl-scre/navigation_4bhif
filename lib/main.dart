import 'package:flutter/material.dart';
import 'package:navigation_4bhif/pages/add_contact_page.dart';
import 'package:navigation_4bhif/pages/contacts_details_page.dart';

import 'pages/contacts_overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ContactsOverviewPage(),
      initialRoute: ContactsOverviewPage.route,
      routes: {
        ContactsOverviewPage.route: (_) => ContactsOverviewPage(),
        AddContactsPage.route: (_) => AddContactsPage(),
        ContactDetailsPage.route: (_) => ContactDetailsPage(),
      },
    );
  }
}
