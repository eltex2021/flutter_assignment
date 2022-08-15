part of 'bottom_navigation_bloc.dart';

@immutable
abstract class BottomNavigationEvent {}

class BottomNavigationInitialEvent extends BottomNavigationEvent {
  final int index;

  BottomNavigationInitialEvent({required this.index});
}

class PageTappedEvent extends BottomNavigationEvent {
  final int index;

  PageTappedEvent({required this.index});
}
