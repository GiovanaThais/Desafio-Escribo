import 'package:test/test.dart';
import '../lib/desafio_escribo.dart';

void main() {
  group('Sum of Divisible Numbers', () {
    test('Sum of divisible numbers for 10', () {
      expect(sumOfDivisible(10), equals(23));
    });

    test('Sum of divisible numbers for 20', () {
      expect(sumOfDivisible(20), equals(78));
    });
  });
}
