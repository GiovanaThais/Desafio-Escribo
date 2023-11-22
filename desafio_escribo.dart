import 'dart:io';

int sumOfDivisible(int number) {
  int sum = 0;

  for (int i = 1; i < number; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  return sum;
}

int readPositiveIntegerFromInput() {
  String? input;
  int? number;

  do {
    stdout.write("Digite um número positivo inteiro: ");
    input = stdin.readLineSync();

    if (input != null) {
      number = int.tryParse(input);
    }
  } while (number == null || number <= 0);

  return number;
}

void main() {
  int number = readPositiveIntegerFromInput();

  int result = sumOfDivisible(number);
  print(
      "A soma dos valores menores que $number e divisíveis por 3 ou 5 é: $result");
}
