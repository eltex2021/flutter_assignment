// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'contacts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsInitialEvent value) initial,
    required TResult Function(GetContactsEvent value) getContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContactsInitialEvent value)? initial,
    TResult Function(GetContactsEvent value)? getContacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsInitialEvent value)? initial,
    TResult Function(GetContactsEvent value)? getContacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsEventCopyWith<$Res> {
  factory $ContactsEventCopyWith(
          ContactsEvent value, $Res Function(ContactsEvent) then) =
      _$ContactsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactsEventCopyWithImpl<$Res>
    implements $ContactsEventCopyWith<$Res> {
  _$ContactsEventCopyWithImpl(this._value, this._then);

  final ContactsEvent _value;
  // ignore: unused_field
  final $Res Function(ContactsEvent) _then;
}

/// @nodoc
abstract class _$$ContactsInitialEventCopyWith<$Res> {
  factory _$$ContactsInitialEventCopyWith(_$ContactsInitialEvent value,
          $Res Function(_$ContactsInitialEvent) then) =
      __$$ContactsInitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ContactsInitialEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res>
    implements _$$ContactsInitialEventCopyWith<$Res> {
  __$$ContactsInitialEventCopyWithImpl(_$ContactsInitialEvent _value,
      $Res Function(_$ContactsInitialEvent) _then)
      : super(_value, (v) => _then(v as _$ContactsInitialEvent));

  @override
  _$ContactsInitialEvent get _value => super._value as _$ContactsInitialEvent;
}

/// @nodoc

class _$ContactsInitialEvent implements ContactsInitialEvent {
  const _$ContactsInitialEvent();

  @override
  String toString() {
    return 'ContactsEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ContactsInitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getContacts,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getContacts,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getContacts,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsInitialEvent value) initial,
    required TResult Function(GetContactsEvent value) getContacts,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContactsInitialEvent value)? initial,
    TResult Function(GetContactsEvent value)? getContacts,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsInitialEvent value)? initial,
    TResult Function(GetContactsEvent value)? getContacts,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ContactsInitialEvent implements ContactsEvent {
  const factory ContactsInitialEvent() = _$ContactsInitialEvent;
}

/// @nodoc
abstract class _$$GetContactsEventCopyWith<$Res> {
  factory _$$GetContactsEventCopyWith(
          _$GetContactsEvent value, $Res Function(_$GetContactsEvent) then) =
      __$$GetContactsEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetContactsEventCopyWithImpl<$Res>
    extends _$ContactsEventCopyWithImpl<$Res>
    implements _$$GetContactsEventCopyWith<$Res> {
  __$$GetContactsEventCopyWithImpl(
      _$GetContactsEvent _value, $Res Function(_$GetContactsEvent) _then)
      : super(_value, (v) => _then(v as _$GetContactsEvent));

  @override
  _$GetContactsEvent get _value => super._value as _$GetContactsEvent;
}

/// @nodoc

class _$GetContactsEvent implements GetContactsEvent {
  const _$GetContactsEvent();

  @override
  String toString() {
    return 'ContactsEvent.getContacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetContactsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getContacts,
  }) {
    return getContacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getContacts,
  }) {
    return getContacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getContacts,
    required TResult orElse(),
  }) {
    if (getContacts != null) {
      return getContacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ContactsInitialEvent value) initial,
    required TResult Function(GetContactsEvent value) getContacts,
  }) {
    return getContacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ContactsInitialEvent value)? initial,
    TResult Function(GetContactsEvent value)? getContacts,
  }) {
    return getContacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ContactsInitialEvent value)? initial,
    TResult Function(GetContactsEvent value)? getContacts,
    required TResult orElse(),
  }) {
    if (getContacts != null) {
      return getContacts(this);
    }
    return orElse();
  }
}

abstract class GetContactsEvent implements ContactsEvent {
  const factory GetContactsEvent() = _$GetContactsEvent;
}

/// @nodoc
mixin _$ContactsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Contact> usaContacts, List<Contact> gbContacts)
        received,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Contact> usaContacts, List<Contact> gbContacts)?
        received,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Contact> usaContacts, List<Contact> gbContacts)?
        received,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsInitialState value) initial,
    required TResult Function(_ContactsReceivedState value) received,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactsInitialState value)? initial,
    TResult Function(_ContactsReceivedState value)? received,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsInitialState value)? initial,
    TResult Function(_ContactsReceivedState value)? received,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsStateCopyWith<$Res> {
  factory $ContactsStateCopyWith(
          ContactsState value, $Res Function(ContactsState) then) =
      _$ContactsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ContactsStateCopyWithImpl<$Res>
    implements $ContactsStateCopyWith<$Res> {
  _$ContactsStateCopyWithImpl(this._value, this._then);

  final ContactsState _value;
  // ignore: unused_field
  final $Res Function(ContactsState) _then;
}

/// @nodoc
abstract class _$$_ContactsInitialStateCopyWith<$Res> {
  factory _$$_ContactsInitialStateCopyWith(_$_ContactsInitialState value,
          $Res Function(_$_ContactsInitialState) then) =
      __$$_ContactsInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContactsInitialStateCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res>
    implements _$$_ContactsInitialStateCopyWith<$Res> {
  __$$_ContactsInitialStateCopyWithImpl(_$_ContactsInitialState _value,
      $Res Function(_$_ContactsInitialState) _then)
      : super(_value, (v) => _then(v as _$_ContactsInitialState));

  @override
  _$_ContactsInitialState get _value => super._value as _$_ContactsInitialState;
}

/// @nodoc

class _$_ContactsInitialState implements _ContactsInitialState {
  const _$_ContactsInitialState();

  @override
  String toString() {
    return 'ContactsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContactsInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Contact> usaContacts, List<Contact> gbContacts)
        received,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Contact> usaContacts, List<Contact> gbContacts)?
        received,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Contact> usaContacts, List<Contact> gbContacts)?
        received,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsInitialState value) initial,
    required TResult Function(_ContactsReceivedState value) received,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactsInitialState value)? initial,
    TResult Function(_ContactsReceivedState value)? received,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsInitialState value)? initial,
    TResult Function(_ContactsReceivedState value)? received,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ContactsInitialState implements ContactsState {
  const factory _ContactsInitialState() = _$_ContactsInitialState;
}

/// @nodoc
abstract class _$$_ContactsReceivedStateCopyWith<$Res> {
  factory _$$_ContactsReceivedStateCopyWith(_$_ContactsReceivedState value,
          $Res Function(_$_ContactsReceivedState) then) =
      __$$_ContactsReceivedStateCopyWithImpl<$Res>;
  $Res call({List<Contact> usaContacts, List<Contact> gbContacts});
}

/// @nodoc
class __$$_ContactsReceivedStateCopyWithImpl<$Res>
    extends _$ContactsStateCopyWithImpl<$Res>
    implements _$$_ContactsReceivedStateCopyWith<$Res> {
  __$$_ContactsReceivedStateCopyWithImpl(_$_ContactsReceivedState _value,
      $Res Function(_$_ContactsReceivedState) _then)
      : super(_value, (v) => _then(v as _$_ContactsReceivedState));

  @override
  _$_ContactsReceivedState get _value =>
      super._value as _$_ContactsReceivedState;

  @override
  $Res call({
    Object? usaContacts = freezed,
    Object? gbContacts = freezed,
  }) {
    return _then(_$_ContactsReceivedState(
      usaContacts: usaContacts == freezed
          ? _value._usaContacts
          : usaContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
      gbContacts: gbContacts == freezed
          ? _value._gbContacts
          : gbContacts // ignore: cast_nullable_to_non_nullable
              as List<Contact>,
    ));
  }
}

/// @nodoc

class _$_ContactsReceivedState implements _ContactsReceivedState {
  const _$_ContactsReceivedState(
      {required final List<Contact> usaContacts,
      required final List<Contact> gbContacts})
      : _usaContacts = usaContacts,
        _gbContacts = gbContacts;

  final List<Contact> _usaContacts;
  @override
  List<Contact> get usaContacts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usaContacts);
  }

  final List<Contact> _gbContacts;
  @override
  List<Contact> get gbContacts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gbContacts);
  }

  @override
  String toString() {
    return 'ContactsState.received(usaContacts: $usaContacts, gbContacts: $gbContacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsReceivedState &&
            const DeepCollectionEquality()
                .equals(other._usaContacts, _usaContacts) &&
            const DeepCollectionEquality()
                .equals(other._gbContacts, _gbContacts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_usaContacts),
      const DeepCollectionEquality().hash(_gbContacts));

  @JsonKey(ignore: true)
  @override
  _$$_ContactsReceivedStateCopyWith<_$_ContactsReceivedState> get copyWith =>
      __$$_ContactsReceivedStateCopyWithImpl<_$_ContactsReceivedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(
            List<Contact> usaContacts, List<Contact> gbContacts)
        received,
  }) {
    return received(usaContacts, gbContacts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Contact> usaContacts, List<Contact> gbContacts)?
        received,
  }) {
    return received?.call(usaContacts, gbContacts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Contact> usaContacts, List<Contact> gbContacts)?
        received,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(usaContacts, gbContacts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ContactsInitialState value) initial,
    required TResult Function(_ContactsReceivedState value) received,
  }) {
    return received(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ContactsInitialState value)? initial,
    TResult Function(_ContactsReceivedState value)? received,
  }) {
    return received?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ContactsInitialState value)? initial,
    TResult Function(_ContactsReceivedState value)? received,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _ContactsReceivedState implements ContactsState {
  const factory _ContactsReceivedState(
      {required final List<Contact> usaContacts,
      required final List<Contact> gbContacts}) = _$_ContactsReceivedState;

  List<Contact> get usaContacts;
  List<Contact> get gbContacts;
  @JsonKey(ignore: true)
  _$$_ContactsReceivedStateCopyWith<_$_ContactsReceivedState> get copyWith =>
      throw _privateConstructorUsedError;
}
