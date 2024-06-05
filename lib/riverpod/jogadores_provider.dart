import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/model/jogador.dart';
import 'package:jogo_da_velha/model/jogadores.dart';

class JogadoresProvider extends Notifier<Jogadores>{

  @override
  Jogadores build() {
    final jogador1Obj = Jogador(nome:  'Jogador 1', numeroVitorias: 0, btJogador: 'X');
    final jogador2Obj = Jogador(nome: 'Jogador 2', numeroVitorias: 0, btJogador: 'O');
    return (jogador1: jogador1Obj, jogador2: jogador2Obj, contador: 1);
  }

  void createJogadores(String jogador1, String jogador2) {

    final jogador1Obj = Jogador(nome: jogador1.isEmpty ? 'Jogador 1' : jogador1, numeroVitorias: 0, btJogador: 'X');
    final jogador2Obj = Jogador(nome: jogador2.isEmpty ? 'Jogador 2' : jogador2, numeroVitorias: 0, btJogador: 'O');

    state = (jogador1: jogador1Obj, jogador2: jogador2Obj, contador: 1);
  }

  Jogador getJogadorDaVez(){
    return state.contador % 2 != 0 ? state.jogador1 : state.jogador2;
  }

  void incrementarContador(){
    state = (jogador1: state.jogador1, jogador2: state.jogador2, contador: state.contador + 1);
  }

  void setNmVitorias(Jogador jogadorVencedor){
    jogadorVencedor.numeroVitorias++;
  }

}

final jogadoresProvider = NotifierProvider<JogadoresProvider, Jogadores>((){
  return JogadoresProvider();
});