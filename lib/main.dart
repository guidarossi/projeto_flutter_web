import 'package:flutter/material.dart';
import 'package:projeto_flutter_web/testes/regras_layout.dart';

import 'loja_virtual.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,


      home: LojaVirtual(),
    );
  }
}

