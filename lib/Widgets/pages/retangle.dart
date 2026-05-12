import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/layout/TopBar.dart';

class Retangle extends StatefulWidget {
  const Retangle({super.key});

  @override
  State<Retangle> createState() => _RetangleState();
}

class _RetangleState extends State<Retangle> {
  var color = Random().nextInt(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Topbar(title: 'Retângulo'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(color: Color(color), width: 300, height: 300),
          const SizedBox(height: 24),
          Center(
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
              ),
              onPressed: () {
                setState(() {
                  color = Random().nextInt(0xffffffff);
                });
              },
              child: const Text(
                'Mudar Cor',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
