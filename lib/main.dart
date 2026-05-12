import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/pages/Atividade2.dart';
import 'package:flutter_application_1/Widgets/pages/Cadastro.dart';
import 'package:flutter_application_1/Widgets/pages/Imc.dart';
import 'package:flutter_application_1/Widgets/pages/Login.dart';
import 'package:flutter_application_1/Widgets/pages/home.dart';
import 'package:flutter_application_1/Widgets/pages/retangle.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bem Vindo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login(),
        '/cadastro': (context) => const Cadastro(),
        '/preco_gasolina': (context) => const Combustivel(),
        '/retangle': (context) => const Retangle(),
        '/imc': (context) => const Imc(),
      },
    );
  }
}
