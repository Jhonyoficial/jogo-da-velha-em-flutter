import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/emuns/status_jogo_enum.dart';

final entradasTabuleiroRiver =
    NotifierProvider<EntradasTabuleiroRiver, List<List<String>>>(() => EntradasTabuleiroRiver());

class EntradasTabuleiroRiver extends Notifier<List<List<String>>> {

  @override
  List<List<String>> build() => [
    ['', '', ''],
    ['', '', ''],
    ['', '', ''],
  ];

  void alterarValor(indexPai, indexFilho, jogadorVez){
    state = List.generate(state.length, (index) =>
        List.from(state[index]));

    state[indexPai][indexFilho] = jogadorVez.btJogador;
  }

  void setPadrao(){
    state = [
      ['', '', ''],
      ['', '', ''],
      ['', '', ''],
    ];
  }

  // Função para verificar se há um vencedor
  StatusJogoEnum checkWinner() {
    // Verifica as linhas
    for (int i = 0; i < 3; i++) {
      if (state[i][0] != '' &&
          state[i][0] == state[i][1] &&
          state[i][0] == state[i][2]) {
        return StatusJogoEnum.VENCEDOR;
      }
    }

    // Verifica as colunas
    for (int i = 0; i < 3; i++) {
      if (state[0][i] != '' &&
          state[0][i] == state[1][i] &&
          state[0][i] == state[2][i]) {
        return StatusJogoEnum.VENCEDOR;
      }
    }

    // Verifica as diagonais
    if (state[0][0] != '' &&
        state[0][0] == state[1][1] &&
        state[0][0] == state[2][2]) {
      return StatusJogoEnum.VENCEDOR;
    }
    if (state[0][2] != '' &&
        state[0][2] == state[1][1] &&
        state[0][2] == state[2][0]) {
      return StatusJogoEnum.VENCEDOR;
    }

    // Verifica se há empate
    if (!state.any((row) => row.contains(''))) {
      return StatusJogoEnum.EMPATE;
    }

    return StatusJogoEnum.JOGANDO;
  }
}