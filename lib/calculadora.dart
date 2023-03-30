import 'dart:math';

class Calculadora {
  static double calcularIMC({required peso, required altura}) {
    double imc = peso / pow(altura / 100, 2);
    return imc;
  }

  static String obterResultado(double imc) {
    if (imc >= 30) {
      return 'Obesidade';
    }
    if (imc >= 25) {
      return 'Sobrepeso';
    }
    if (imc > 18.5) {
      return 'Normal';
    }
    return 'Magreza';
  }
}
