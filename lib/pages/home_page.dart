import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/riverpod/jogadores_provider.dart';
import 'package:jogo_da_velha/routes/routes.dart';
import 'package:jogo_da_velha/widgets/input_nome_jogador.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final TextEditingController _jogador1Controller = TextEditingController();
    final TextEditingController _jogador2Controller = TextEditingController();

    final _jogadoresProvider = ref.read(jogadoresProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Jogo da velha',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          height: 500,
          child: Card(
            elevation: 0.5,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InputNomeJogador(nomeJogador: 'jogador1', controller: _jogador1Controller,),
                  const SizedBox(height: 30),
                  InputNomeJogador(nomeJogador: 'jogador2', controller: _jogador2Controller,),
                  const SizedBox(height: 60),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      backgroundColor: Theme.of(context).colorScheme.primary
                    ),
                    onPressed: () {
                      _jogadoresProvider.createJogadores(_jogador1Controller.text, _jogador2Controller.text);
                      Navigator.of(context).pushNamed(AppRoutes.TABULEIRO);
                    },
                    child: const Text(
                      'JOGAR',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
