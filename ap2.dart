void main() {
  final retangulo = Retangulo(3.5, 5.0);

  final area = retangulo.calcularArea();

  print("Area do retângulo: $area");
}

class Retangulo {
  Retangulo(this.altura, this.largura);

  double altura;
  double largura;

  double calcularArea() {
    return altura * largura;
  }
}
