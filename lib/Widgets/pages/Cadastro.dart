import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: const Center(
        child: Text('Página de cadastro', style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
