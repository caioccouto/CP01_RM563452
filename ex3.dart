//Caio Cantini Couto - RM563452

void mostrarResultado(List<int> primos, List<int> naoPrimos) {
  var maiorPrimo = primos[0];

  for (int n in primos) {
    if (n > maiorPrimo) {
      maiorPrimo = n;
    }
  }

  print('Primos (${primos.length}): $primos');

  print('Não Primos (${naoPrimos.length}): $naoPrimos');
  print('Maior primo encontrado: $maiorPrimo');
}

void main() {
  List<int> numeros = [2, 15, 17, 21, 29, 33, 41, 49];
  List<int> primos = [];
  List<int> naoPrimos = [];

  for (int n in numeros) {
    bool primo = true;

    if (n <= 1) {
      primo = false;
    } else {
      for (int i = 2; i < n; i++) {
        if (n % i == 0) {
          primo = false;
          break;
        }
      }
    }

    if (primo) {
      primos.add(n);
    } else {
      naoPrimos.add(n);
    }
  }

  mostrarResultado(primos, naoPrimos);
}
