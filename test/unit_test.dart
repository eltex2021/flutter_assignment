import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Разработка через тестирование 1", () {
    const result = 5 + 6;
    expect(result, 11);
  });

  test("Разработка через тестирование 2 ", () {
    int? sum(int a, int b) {
      return a + b;
    }

    final result = sum(5, 6);
    expect(result, 11);
  });

  test('Проверка функции на  стандартные значения', () {
    final result = (27.3).toStringAsFixed(0) + ' °C';

    expect(result, equals('27 °C'));
  });
}

/// команда для запуска в терминале flutter test test/unit_test.dart
