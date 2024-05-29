import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/model/jogador.dart';
import 'package:jogo_da_velha/model/jogadores.dart';

class JogadoresProvider extends Notifier<Jogadores>{

  @override
  Jogadores build() {
    final jogador1Obj = Jogador(nome:  'Jogador 1', numeroVitorias: 0);
    final jogador2Obj = Jogador(nome: 'Jogador 2', numeroVitorias: 0);
    return (jogador1: jogador1Obj, jogador2: jogador2Obj);
  }

  void createJogadores(String jogador1, String jogador2) {

    final jogador1Obj = Jogador(nome: jogador1.isEmpty ? 'Jogador 1' : jogador1, numeroVitorias: 0);
    final jogador2Obj = Jogador(nome: jogador2.isEmpty ? 'Jogador 2' : jogador2, numeroVitorias: 0);

    state = (jogador1: jogador1Obj, jogador2: jogador2Obj);
  }

}

final jogadoresProvider = NotifierProvider<JogadoresProvider, Jogadores>((){
  return JogadoresProvider();
});