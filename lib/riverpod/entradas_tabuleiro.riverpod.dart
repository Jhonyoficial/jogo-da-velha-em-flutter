import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/riverpod/jogadores_provider.dart';

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
}