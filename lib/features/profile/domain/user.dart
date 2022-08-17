import 'package:freezed_annotation/freezed_annotation.dart';

import '../../contacts/domain/contact.dart';

part 'user.freezed.dart';


@freezed
class User with _$User {
  const factory User({
    required String firstName,
    required String lastName,
    required String photo,
    required List<Contact> contacts,
  }) = _User;
}
