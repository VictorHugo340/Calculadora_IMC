void main() {}

class Pessoa {
  final String nome;
  final double peso;
  final double altura;

  Pessoa(this.nome, this.peso, this.altura);
}



  /*print("Digite seu peso:");
  var line = stdin.readLineSync(encoding: utf8);
  var peso = double.parse(line ?? "0");

  print("Digite sua altura:");
  var line1 = stdin.readLineSync(encoding: utf8);
  var altura = double.parse(line1 ?? "0");

  double imc = calculaIMC(peso, altura);
  print('Seu IMC é: $imc');
}

double calculaIMC(double peso, double altura) {
  return peso / (altura * altura);*/