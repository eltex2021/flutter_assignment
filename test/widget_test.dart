import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/features/contacts/domain/bloc/contacts_bloc.dart';
import 'package:flutter_assignment/features/home/domain/bottom_navigation_bloc.dart';
import 'package:flutter_assignment/features/home/presentation/components/country_phone_widget.dart';
import 'package:flutter_assignment/features/home/presentation/main_screen_nav_bar.dart';
import 'package:flutter_assignment/theme/app_colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  int counter = 0;
  setUp(() {
    if (kDebugMode) {
      print('Запуск тестирования');
    }
  });

  tearDown(() {
    if (kDebugMode) {
      print('Тест завершен');
    }
    counter++;
  });

  tearDownAll(() {
    if (kDebugMode) {
      print('Количество тестов $counter');
    }
  });

  testWidgets('Проверка экрана Home', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: MultiBlocProvider(providers: [
        BlocProvider<BottomNavigationBloc>(
          create: (context) => BottomNavigationBloc(),
        ),
        BlocProvider<ContactsBloc>(create: (context) => ContactsBloc()
            //..add(const ContactsEvent.initial()),
            ),
      ], child: const MainScreen()),
    ));

    //проверка наличия текста в строке поиска
    final textFinder = find.text('Country name');
    expect(textFinder, findsOneWidget);

    //проверка, что выведено на экран 3 кнопки
    final customButton = find.byType(OutlinedButton);
    expect(customButton, findsNWidgets(3));

    //проверка наличия иконки в appBar
    final icon = find.widgetWithIcon(AppBar, Icons.bar_chart);
    expect(icon, findsOneWidget);

    //проверка цвета в Material
    final mainColor = tester.firstWidget(find.byType(Material)) as Material;
    expect(mainColor.color, const Color(0xfffafafa));

    //проверка количества групп телефонов по странам
    final phoneNumbers = find.byType(CountryPhoneWidget);
    expect(phoneNumbers, findsNWidgets(2));
  });

  testWidgets('Проверка цвета кнопок sms, mms, voice', (WidgetTester tester) async {
    await tester.pumpWidget(MaterialApp(
      home: MultiBlocProvider(providers: [
        BlocProvider<BottomNavigationBloc>(
          create: (context) => BottomNavigationBloc(),
        ),
        BlocProvider<ContactsBloc>(create: (context) => ContactsBloc(),
            ),
      ], child: const MainScreen()),
    ));

      // resolve для получения точного состояния MaterialState, иначе не работает

    final colorButton =
        (tester.firstWidget(find.byType(OutlinedButton)) as OutlinedButton)
            .style!
            .backgroundColor;

    expect(
        colorButton!.resolve(<MaterialState>{}),
        MaterialStateProperty.all(AppColors.pureBlue)
            .resolve(<MaterialState>{}));
  });
}

/// Для запуска теста flutter test test/widget_test.dart
