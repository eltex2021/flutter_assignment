part of 'bottom_navigation_bloc.dart';

@immutable
abstract class BottomNavigationState {}

class BottomNavigationInitial extends BottomNavigationState {
  final int currentIndex;

  BottomNavigationInitial(this.currentIndex);
}

class HomeScreenState extends BottomNavigationState {
  final int currentIndex = 0;
}

class CallsTappedState extends BottomNavigationState {
  final int currentIndex = 1;
}

class MessagesTappedState extends BottomNavigationState {
  final int currentIndex = 2;
}

class ContactsTappedState extends BottomNavigationState {
  final int currentIndex = 3;
}
