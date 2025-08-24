import 'dart:io';
import 'package:atividades_basicas/utils/io.dart';

String _fmt(num n) => (n is int) ? '$n' : n.toStringAsFixed(2);

void exercicio1() {
  final a = readDouble('Digite o 1º número: ');
  final b = readDouble('Digite o 2º número: ');
  stdout.writeln('\nResultados:');
  stdout.writeln('Soma:          ${_fmt(a + b)}');
  stdout.writeln('Subtração:     ${_fmt(a - b)}');
  stdout.writeln('Multiplicação: ${_fmt(a * b)}');
  if (b == 0) {
    stdout.writeln('Divisão:       não é possível dividir por zero.');
  } else {
    stdout.writeln('Divisão:       ${_fmt(a / b)}');
  }
}

void exercicio2() {
  final n1 = readDouble('Nota 1: ');
  final n2 = readDouble('Nota 2: ');
  final n3 = readDouble('Nota 3: ');
  final media = (n1 + n2 + n3) / 3.0;
  stdout.writeln(
    'Média: ${media.toStringAsFixed(2)} → ${media >= 7 ? 'Aprovado' : 'Reprovado'}',
  );
}

void exercicio3() {
  final c = readDouble('Temperatura em °C: ');
  final f = c * 9 / 5 + 32;
  stdout.writeln('${_fmt(c)} °C = ${_fmt(f)} °F');
}

void exercicio4() {
  final n = readDouble('Digite um número: ');
  stdout.writeln(n > 0 ? 'Positivo' : (n < 0 ? 'Negativo' : 'Zero'));
}

void exercicio5() {
  final idade = readInt('Digite sua idade: ', min: 0);
  stdout.writeln(idade >= 18 ? 'Maior de idade' : 'Menor de idade');
}

void exercicio6() {
  final ano = readInt('Digite um ano (ex.: 2024): ', min: 1);
  final bissexto = (ano % 400 == 0) || (ano % 4 == 0 && ano % 100 != 0);
  stdout.writeln(bissexto ? 'Bissexto' : 'Não bissexto');
}

void exercicio7() {
  double soma = 0;
  while (true) {
    final n = readDouble('Digite um número (0 para parar): ');
    if (n == 0) break;
    soma += n;
  }
  stdout.writeln('Soma total: ${_fmt(soma)}');
}

void exercicio8() {
  int i = 1;
  while (i <= 10) {
    stdout.write('$i ');
    i++;
  }
  stdout.writeln();
}

void exercicio9() {
  final n = readInt(
    'Digite um número para a tabuada (1 a 10): ',
    min: 1,
    max: 10,
  );
  stdout.writeln('Tabuada do $n:');
  for (var i = 1; i <= 10; i++) {
    stdout.writeln('$n x $i = ${n * i}');
  }
}

void exercicio10() {
  final n = readInt('Digite um número inteiro >= 0 para o fatorial: ', min: 0);
  var result = BigInt.one;
  for (var i = 2; i <= n; i++) {
    result *= BigInt.from(i);
  }
  stdout.writeln('$n! = $result');
}
