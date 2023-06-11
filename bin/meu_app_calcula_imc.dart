import 'dart:io';
import 'dart:convert';

class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);
}

void main() {
  print('Calculadora de IMC');
  print('------------------');

  // Ler os dados do usuário
  print('Digite o nome da pessoa:');
  String nome = stdin.readLineSync(encoding: utf8)!;

  print('Digite o peso da pessoa (em kg):');
  double peso = double.parse(stdin.readLineSync(encoding: utf8)!);

  print('Digite a altura da pessoa (em metros):');
  double altura = double.parse(stdin.readLineSync(encoding: utf8)!);

  // Criar uma instância da classe Pessoa
  Pessoa pessoa = Pessoa(nome, peso, altura);

  // Calcular o IMC
  double imc = pessoa.peso / (pessoa.altura * pessoa.altura);
  String imcFormatado = imc.toStringAsFixed(1);

  // Classificar o IMC
  String classificacao = '';

  if (imc < 18.5) {
    classificacao = 'Abaixo do peso';
  } else if (imc < 25) {
    classificacao = 'Peso normal';
  } else if (imc < 30) {
    classificacao = 'Sobrepeso';
  } else if (imc < 35) {
    classificacao = 'Obesidade grau 1';
  } else if (imc < 40) {
    classificacao = 'Obesidade grau 2';
  } else {
    classificacao = 'Obesidade grau 3';
  }

  // Exibir o resultado
  print('------------------');
  print('Nome: ${pessoa.nome}');
  print('Peso: ${pessoa.peso} kg');
  print('Altura: ${pessoa.altura} m');
  print('IMC: $imcFormatado');
  print('Classificação: $classificacao');
}
