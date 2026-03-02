import 'package:flutter/material.dart';
import 'mispantallas/Inicio.dart';
import 'mispantallas/pantalla2.dart';
import 'mispantallas/pantalla3.dart';

void main() => runApp(const AgenciaApp());

class AgenciaApp extends StatelessWidget {
  const AgenciaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agencia de Carros',
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/about': (context) => const Pantalla2(),
        '/catalogo': (context) => const Pantalla3(),
      },
    );
  }
}