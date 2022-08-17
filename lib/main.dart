import 'package:flutter/material.dart';
import 'package:flutter_assignment/theme/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/contacts/domain/bloc/contacts_bloc.dart';
import 'features/home/domain/bottom_navigation_bloc.dart';
import 'features/home/presentation/main_screen_nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: AppColors.mainBlue,
        ),
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider<BottomNavigationBloc>(
          create: (context) => BottomNavigationBloc(),
        ),
        BlocProvider<ContactsBloc>(
          create: (context) =>
              ContactsBloc()..add(const ContactsEvent.initial()),
        ),
      ], child: const MainScreen()),
    );
  }
}
