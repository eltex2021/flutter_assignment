import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../theme/app_colors.dart';
import '../../../theme/app_texts.dart';
import '../../calls/calls_screen.dart';
import '../../contacts/presentation/contacts_screen.dart';
import '../../messages/messages_screen.dart';
import '../domain/bottom_navigation_bloc.dart';
import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          if (state is BottomNavigationInitial || state is HomeScreenState) {
            return const HomeScreen();
          }
          if (state is CallsTappedState) {
            return const CallsScreen();
          }
          if (state is MessagesTappedState) {
            return const MessagesScreen();
          }
          if (state is ContactsTappedState) {
            return const ContactsScreen();
          }
          return const Text('Error with BottomNavigationBloc');
        },
      ),
      bottomNavigationBar:
          BlocBuilder<BottomNavigationBloc, BottomNavigationState>(
        builder: (context, state) {
          return BottomNavigationBar(
              elevation: 0,
              backgroundColor: AppColors.mainPink,
              currentIndex: context
                  .select((BottomNavigationBloc bloc) => bloc.currentIndex),
              type: BottomNavigationBarType.fixed,
              selectedItemColor: AppColors.mainBlue,
              unselectedItemColor: AppColors.pureBlue,
              selectedLabelStyle: AppTexts.bottomSelectedText,
              unselectedLabelStyle: AppTexts.bottomUnselectedText,
              onTap: (index) {
                context.read<BottomNavigationBloc>().add(
                      PageTappedEvent(index: index),
                    );
              },
              items: const [
                BottomNavigationBarItem(
                  activeIcon: Icon(Icons.home_outlined),
                  icon: Icon(Icons.home_outlined),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.call_outlined),
                    activeIcon: Icon(Icons.call_outlined),
                    label: 'Calls'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.mail_outline),
                    activeIcon: Icon(Icons.mail_outline),
                    label: 'Messages'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),
                    activeIcon: Icon(Icons.person_outline),
                    label: 'Contacts'),
              ]);
        },
      ),
    );
  }
}
