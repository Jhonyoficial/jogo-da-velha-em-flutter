import 'package:flutter/material.dart';
import 'package:jogo_da_velha/emuns/status_jogo_enum.dart';

import '../model/jogador.dart';

class VencedorDialog extends StatelessWidget {
  const VencedorDialog({required this.jogadorCampeao, required this.statusJogo, super.key});

  final Jogador jogadorCampeao;
  final StatusJogoEnum statusJogo;
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(statusJogo == StatusJogoEnum.VENCEDOR ? '${jogadorCampeao.nome} é o Vencedor' : 'Empatado'),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Fechar'),
              ),
            ],
          ),
        ),
    );
  }
}
