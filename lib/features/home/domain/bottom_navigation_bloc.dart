import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';

part 'bottom_navigation_state.dart';

class BottomNavigationBloc
    extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationInitial(0)) {
    on<BottomNavigationInitialEvent>((event, emit) {
      emit(BottomNavigationInitial(0));
    });
    on<PageTappedEvent>((event, emit) {
      currentIndex = event.index;
      if (event.index == 0) {
        emit(HomeScreenState());
      }
      if (event.index == 1) {
        emit(CallsTappedState());
      }
      if (event.index == 2) {
        emit(MessagesTappedState());
      }
      if (event.index == 3) {
        emit(ContactsTappedState());
      }
    });
  }

  int currentIndex = 0;
}
