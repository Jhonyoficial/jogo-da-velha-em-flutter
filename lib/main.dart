import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jogo_da_velha/pages/home_page.dart';
import 'package:jogo_da_velha/pages/tabuleiro.dart';
import 'package:jogo_da_velha/routes/routes.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal)),
      title: 'Jogo da Velha',
      routes: {
        AppRoutes.HOME: (ctx) => const HomePage(),
        AppRoutes.TABULEIRO: (ctx) => const Tabuleiro(),
      },
    );
  }
}
