void main() {
  final produtos = [
    Produto("Notebook", 2100.90),
    Produto("Teclado", 400.00),
    Produto("Mouse", 199.90),
    Produto("Cadeira", 690.90),
    Produto("Monitor", 899.90),
  ];

  for (var produto in produtos) {
    final novoPreco = produto.desconto(3.0);

    print(
      "Novo preço do produto ${produto.nome} (com desconto): ${novoPreco.toStringAsFixed(2)}",
    );
  }
}

class Produto {
  Produto(this.nome, this.preco);

  final String nome;
  final double preco;

  double desconto(double percentual) {
    return preco * (100 - percentual) / 100;
  }
}
