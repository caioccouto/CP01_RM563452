//Caio Cantini Couto - RM563452

void mostrarTotalBruto(List<double> precos, List<int> quantidades) {
  var totalGeral = 0.0;

  for (int i = 0; i < precos.length; i++) {
    var precoAtual = precos[i];
    var quantidadeAtual = quantidades[i];

    var subtotalProduto = precoAtual * quantidadeAtual;

    totalGeral += subtotalProduto;
  }

  print('Total bruto: R\$ ${totalGeral.toStringAsFixed(2)}');
}

void mostrarTotalComDesconto(List<double> precos, List<int> quantidades) {
  var totalGeral = 0.0;

  for (int i = 0; i < precos.length; i++) {
    var precoAtual = precos[i];
    var quantidadeAtual = quantidades[i];

    var subtotalProduto = precoAtual * quantidadeAtual;

    totalGeral += subtotalProduto;
  }

  if (totalGeral > 100) {
    var totalComDesconto = totalGeral - totalGeral * 0.1;
    print('Desconto aplicado: Sim (10%)');
    print('Total a pagar: R\$ ${totalComDesconto.toStringAsFixed(2)}');
  }
}

void main() {
  List<double> precos = [25.0, 12.5, 8.0, 40.0];
  List<int> quantidades = [2, 3, 5, 1];

  mostrarTotalBruto(precos, quantidades);
  mostrarTotalComDesconto(precos, quantidades);
}
