import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../data/contacts_repository_mock.dart';
import '../contact.dart';

part 'contacts_bloc.freezed.dart';

part 'contacts_event.dart';

part 'contacts_state.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  List<Contact> usaList = [];
  List<Contact> gbList = [];

  ContactsBloc() : super(const ContactsState.initial()) {
    final _repo = ContactsMockRepository();
    on<ContactsInitialEvent>((event, emit) {
      emit(const ContactsState.initial());
      Future.delayed(const Duration(seconds: 1)).whenComplete(() {
        add(const ContactsEvent.getContacts());
      });
    });
    on<GetContactsEvent>((event, emit) async {
      usaList = await _repo.getContactsUsa();
      gbList = await _repo.getContactsGb();
      emit(ContactsState.received(usaContacts: usaList, gbContacts: gbList));
    });
  }
}
