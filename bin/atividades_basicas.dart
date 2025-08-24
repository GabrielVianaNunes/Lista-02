import 'dart:io';
import 'package:atividades_basicas/utils/io.dart';
import 'package:atividades_basicas/exercises.dart';

void main(List<String> args) {
  while (true) {
    stdout.writeln('\n=== ATIVIDADES BÁSICAS (Dart Console) ===');
    stdout.writeln('Cálculo');
    stdout.writeln(
      '  1) Dois números: soma, subtração, multiplicação e divisão',
    );
    stdout.writeln('  2) Média de três notas (aprovado se média >= 7)');
    stdout.writeln('  3) Celsius → Fahrenheit');
    stdout.writeln('If/Else');
    stdout.writeln('  4) Positivo, negativo ou zero');
    stdout.writeln('  5) Menor ou maior de idade');
    stdout.writeln('  6) Ano bissexto');
    stdout.writeln('While');
    stdout.writeln('  7) Somar números até digitar 0');
    stdout.writeln('  8) Contador 1..10 usando while');
    stdout.writeln('For');
    stdout.writeln('  9) Tabuada (1 a 10)');
    stdout.writeln(' 10) Fatorial (for)');
    stdout.writeln('  0) Sair');

    final opt = readInt('\nEscolha uma opção: ', min: 0, max: 10);
    if (opt == 0) {
      stdout.writeln('Até mais!');
      break;
    }
    switch (opt) {
      case 1:
        exercicio1();
        break;
      case 2:
        exercicio2();
        break;
      case 3:
        exercicio3();
        break;
      case 4:
        exercicio4();
        break;
      case 5:
        exercicio5();
        break;
      case 6:
        exercicio6();
        break;
      case 7:
        exercicio7();
        break;
      case 8:
        exercicio8();
        break;
      case 9:
        exercicio9();
        break;
      case 10:
        exercicio10();
        break;
    }
  }
}
