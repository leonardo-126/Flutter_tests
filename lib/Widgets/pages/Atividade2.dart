import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/layout/TopBar.dart';

class Combustivel extends StatefulWidget {
  const Combustivel({super.key});

  @override
  State<Combustivel> createState() => _CombustivelState();
}

class _CombustivelState extends State<Combustivel> {
  var txtEtanol = TextEditingController();
  var txtGasolina = TextEditingController();

  late double valorEtanol;
  late double valorGasolina;
  String _result = '';
  double proporcao = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Topbar(title: 'Com que combustível abastecer?'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.attach_money, size: 180, color: Colors.lightBlue),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: txtGasolina,
                  decoration: const InputDecoration(
                    labelText: 'Preço da Gasolina',
                    labelStyle: TextStyle(color: Colors.green),
                    border: OutlineInputBorder(),
                  ),
                  style: const TextStyle(color: Colors.green, fontSize: 18),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: txtEtanol,
                  // ignore: prefer_const_constructors
                  decoration: InputDecoration(
                    labelText: 'Preço do Etanol',
                    labelStyle: const TextStyle(color: Colors.green),
                    border: const OutlineInputBorder(),
                  ),
                  style: const TextStyle(color: Colors.green, fontSize: 25.0),

                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Center(
                child: FittedBox(
                  child: FittedBox(
                    child: FloatingActionButton(
                      backgroundColor: Colors.lightGreen,
                      onPressed: _verificaCombustivel,
                      child: const Text('OK'),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Text("O melhor combustível para abastecer é: $_result"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _verificaCombustivel() {
    setState(() {
      valorGasolina = double.tryParse(txtGasolina.text) ?? 0.0;
      valorEtanol = double.tryParse(txtEtanol.text) ?? 0.0;

      if (valorGasolina > 0 && valorEtanol > 0) {
        proporcao = valorGasolina * 0.7;

        if (valorEtanol <= proporcao) {
          _result = 'Etanol';
        } else {
          _result = 'Gasolina';
        }
      } else {
        _result =
            'Por favor, insira valores válidos para ambos os combustíveis.';
      }
    });
  }
}
