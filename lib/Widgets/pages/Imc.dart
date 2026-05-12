import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/Widgets/layout/TopBar.dart';

class Imc extends StatefulWidget {
  const Imc({super.key});

  @override
  State<Imc> createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  var txtPeso = TextEditingController();
  var txtAltura = TextEditingController();

  double peso = 0.0;
  double altura = 0.0;
  var _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Topbar(title: 'Caucular IMC'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.fitness_center, size: 180, color: Colors.lightBlue),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: txtPeso,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Peso (kg)',
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
                  controller: txtAltura,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                  ],
                  decoration: const InputDecoration(
                    labelText: 'Altura (m)',
                    labelStyle: TextStyle(color: Colors.green),
                    border: OutlineInputBorder(),
                  ),
                  style: const TextStyle(color: Colors.green, fontSize: 25.0),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: _verificarImc,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 15,
                    ),
                  ),
                  child: const Text('Calcular', style: TextStyle(fontSize: 18)),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                alignment: Alignment.center,
                child: Text(
                  _result,
                  style: const TextStyle(fontSize: 18, color: Colors.blue),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _verificarImc() {
    setState(() {
      peso = double.tryParse(txtPeso.text) ?? 0.0;
      altura = double.tryParse(txtAltura.text) ?? 0.0;

      _result = '';

      if (peso > 0 && altura > 0) {
        double imc = peso / (altura * altura);

        if (imc < 18.5) {
          _result =
              'Abaixo do peso com o valor de IMC: ${imc.toStringAsFixed(2)}';
        } else if (imc >= 18.5 && imc < 24.9) {
          _result = 'Peso normal com o valor de IMC: ${imc.toStringAsFixed(2)}';
        } else if (imc >= 25 && imc < 29.9) {
          _result = 'Sobrepeso com o valor de IMC: ${imc.toStringAsFixed(2)}';
        } else if (imc >= 30 && imc < 34.9) {
          _result =
              'Obesidade grau I com o valor de IMC: ${imc.toStringAsFixed(2)}';
        } else if (imc >= 35 && imc < 39.9) {
          _result =
              'Obesidade grau II com o valor de IMC: ${imc.toStringAsFixed(2)}';
        } else {
          _result =
              'Obesidade grau III com o valor de IMC: ${imc.toStringAsFixed(2)}';
        }
      } else {
        _result = 'Por favor, insira valores válidos para peso e altura.';
      }
    });
  }
}
