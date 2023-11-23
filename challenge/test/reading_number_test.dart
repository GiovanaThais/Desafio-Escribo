import 'dart:io' hide stdin;

import 'package:challenge/desafio_escribo.dart'
    show readPositiveIntegerFromInput;
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

class FakeStdin extends Mock implements Stdin {}

void main() {
  test('collect returns input', () {
    final stdin = FakeStdin();
    var input = '5\n';
    var expectedOutput = 5;

    when(() => stdin.readLineSync()).thenReturn(input);

    IOOverrides.runZoned(
      () {
        expect(
            readPositiveIntegerFromInput(), equals(expectedOutput)); // passes!
      },
      stdin: () => stdin,
    );
  });
}
