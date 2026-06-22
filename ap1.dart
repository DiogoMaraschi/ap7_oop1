void main() {
  final conta = ContaBancaria(100.0, "Diogo");

  conta.depositar(1000.0);
  conta.sacar(500.0);

  print("Saldo atual: ${conta.saldo}");
}

class ContaBancaria {
  ContaBancaria(this.saldo, this.nome);

  double saldo;
  String nome;

  void sacar(double valor) {
    if (saldo <= valor) {
      saldo -= valor;
    }
  }

  void depositar(double valor) {
    saldo += valor;
  }
}
