//Caio Cantini Couto - RM563452

void mostrarMedia(List<double> notas) {
  var soma = 0.0;

  for (double n in notas) {
    soma += n;
  }

  var media = soma / notas.length;

  print('Média da turma: $media');
}

void mostrarMaiorNota(List<double> notas) {
  var maior = notas[0];

  for (double n in notas) {
    if (n > maior) {
      maior = n;
    }
  }

  print('A maior nota é: $maior');
}

void mostrarMenorNota(List<double> notas) {
  var menor = notas[0];

  for (double n in notas) {
    if (n > menor) {
      menor = n;
    }
  }

  print('A menor nota é: $menor');
}

void mostrarSituacao(List<double> notas) {
  var soma = 0.0;

  for (double n in notas) {
    soma += n;
  }

  var media = soma / notas.length;

  if (media >= 7) {
    print('Situação: Aprovado!');
  } else if (media < 5) {
    print('Situação: Reprovado!');
  } else {
    print('Situação: Recuperação!');
  }
}

void main() {
  List<double> notas = [7.5, 4.0, 9.2, 6.0, 3.8];

  mostrarMedia(notas);
  mostrarMaiorNota(notas);
  mostrarMenorNota(notas);
  mostrarSituacao(notas);
}
