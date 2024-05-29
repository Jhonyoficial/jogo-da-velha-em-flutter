import 'package:flutter_riverpod/flutter_riverpod.dart';

final entradasTabuleiroRiver =
    NotifierProvider<EntradasTabuleiroRiver, List<List<String>>>(() => EntradasTabuleiroRiver());

class EntradasTabuleiroRiver extends Notifier<List<List<String>>> {

  @override
  List<List<String>> build() => [
    ['X', 'O', 'X'],
    ['X', 'X', 'X'],
    ['X', 'X', 'X'],
  ];
}