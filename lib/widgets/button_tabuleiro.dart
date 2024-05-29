import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/states/entradas_tabuleiro.riverpod.dart';

class ButtonTabuleiro extends ConsumerWidget {
  const ButtonTabuleiro({required this.indiceArrayPai});

  final int indiceArrayPai;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listEntradas = ref.watch(entradasTabuleiroRiver);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: listEntradas[indiceArrayPai]
          .map((item) => Padding(
                padding: EdgeInsets.all(4),
                child: ElevatedButton(
                  onPressed: () {
                    print("Botão ${item} pressionado");
                  },
                  child: Text(
                    item,
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(100, 100),
                      backgroundColor: Colors.grey[500]),
                ),
              ))
          .toList(),
    );
  }
}
