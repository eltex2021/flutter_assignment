import 'package:flutter_assignment/features/contacts/data/models/contact.dart';

import '../../domain/repository/contacts_repository.dart';

class ContactsMockRepository implements ContactsRepository {
  @override
  Future<List<Contact>> getContactsUsa() async {
    List<Contact> mockContacts = [
      const Contact(
          country: 'United States',
          region: 'New Jersey',
          name: 'Mike',
          phone: '+1(201)123-45-67'),
      const Contact(
          country: 'United States',
          region: 'New Jersey',
          name: 'Helen',
          phone: '+1(201)123-45-67'),
      const Contact(
          country: 'United States',
          region: 'New Jersey',
          name: 'Eliza',
          phone: '+1(201)123-45-67'),
    ];
    return mockContacts;
  }

  @override
  Future<List<Contact>> getContactsGb() async {
    List<Contact> mockContacts = [
      const Contact(
          country: 'United Kingdom',
          region: 'New Jersey',
          name: 'Barbara',
          phone: '+44(201)123-45-67'),
      const Contact(
          country: 'United Kingdom',
          region: 'New Jersey',
          name: 'Anna',
          phone: '+44(204)123-45-67'),
      const Contact(
          country: 'United Kingdom',
          region: 'New Jersey',
          name: 'Pammy',
          phone: '+44(209)123-45-67'),
    ];
    return mockContacts;
  }
}
