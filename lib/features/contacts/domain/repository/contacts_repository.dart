import '../../data/models/contact.dart';

abstract class ContactsRepository {
  Future<List<Contact>> getContactsUsa();

  Future<List<Contact>> getContactsGb();
}
