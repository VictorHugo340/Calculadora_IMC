import 'dart:io';
import 'package:meu_app_calcula_imc/altura.dart';
import 'package:meu_app_calcula_imc/pessoa.dart';
import 'package:meu_app_calcula_imc/resultado.dart';
import 'dart:convert';

void main() {
  print('Bem-vindo a Calculadora de IMC');
  print('--------------------------------');

  try {
    // Ler os dados do usuário
    print('Digite o seu nome:');
    String nome = stdin.readLineSync(encoding: utf8)!;

    print('Digite o seu peso em KG: ');
    double peso = double.parse(stdin.readLineSync(encoding: utf8)!);

    double alturaMetros = lerAltura();

    // Criar uma instância da classe Pessoa
    Pessoa pessoa = Pessoa(nome, peso, alturaMetros);

    // Calcular o IMC
    double imc = pessoa.peso / (pessoa.altura * pessoa.altura);

    // Classificar o IMC
    String classificacao;

    if (imc < 16) {
      classificacao = 'Magreza grave';
    } else if (imc < 17) {
      classificacao = 'Magreza moderada';
    } else if (imc < 18.5) {
      classificacao = 'Magreza leve';
    } else if (imc < 25) {
      classificacao = 'Saudável';
    } else if (imc < 30) {
      classificacao = 'Sobrepeso';
    } else if (imc < 35) {
      classificacao = 'Obesidade Grau I';
    } else if (imc < 40) {
      classificacao = 'Obesidade grau II(severa)';
    } else {
      classificacao = 'Obesidade Grau III(mórbida)';
    }

    // Exibir o resultado
    exibirResultado(pessoa, imc, classificacao);
  } catch (e) {
    print('Erro: $e');
  }
}
