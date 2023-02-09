import 'package:teste_unitario_dart/sum.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() {
    print('Starting all unit test groups');
  });
  group('This is a unit test on sum of integers\n', () {
    test(
        'This is 10?\n',
        () =>
            expect(sum(5, 5), allOf([10, isNotNull, isPositive, isA<int>()])));

    test(
        'This is 11?\n',
        () =>
            expect(sum(6, 5), allOf([11, isNotNull, isPositive, isA<int>()])));
  });

  group('This is a unit test on sum of floating\n', () {
    test(
        'This is 10.50?\n',
        () => expect(sum(5.25, 5.25),
            allOf([10.50, isNotNull, isPositive, isA<double>()])));

    test(
        'This is 100.25?\n',
        () => expect(sum(50, 50.25),
            allOf([100.25, isNotNull, isPositive, isA<double>()])));
  });

  group('This is a unit test on sum of negative integers\n', () {
    test(
        'This is -10\n',
        () => expect(
            sum(-5, -5), allOf([-10, isNotNull, isNegative, isA<int>()])));

    test(
        'This is -11\n',
        () => expect(
            sum(-5, -6), allOf([-11, isNotNull, isNegative, isA<int>()])));
  });

  group('This is a unit test on sum of negative floating\n', () {
    test(
        'This is -10.50\n',
        () => expect(sum(-5.25, -5.25),
            allOf([-10.50, isNotNull, isNegative, isA<double>()])));

    test(
        'This is -100.25\n',
        () => expect(sum(-50, -50.25),
            allOf([-100.25, isNotNull, isNegative, isA<double>()])));
  });
}
