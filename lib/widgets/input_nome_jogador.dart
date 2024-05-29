import 'package:flutter/material.dart';

class InputNomeJogador extends StatelessWidget {
  const InputNomeJogador({required this.nomeJogador, super.key, required this.controller});

  final TextEditingController controller;
  final String nomeJogador;

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: 'Nome $nomeJogador',
        border: const OutlineInputBorder(),
      ),
    );
  }
}
