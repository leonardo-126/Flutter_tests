import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/layout/TopBar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Topbar(title: 'Bem-Vindo'),
      body: Container(
        // Widget usado para compor outros widgets
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Icon(Icons.home, size: 100, color: Colors.blue),
            ),
            Text(
              'INFO HOME',
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'SOLUÇÕES EM IoT',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                color: Color.fromARGB(255, 212, 212, 212),
                fontWeight: FontWeight.normal,
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
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
                    Navigator.pushNamed(context, '/cadastro');
                  },
                  child: const Text(
                    'CADASTRAR',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
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
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/preco_gasolina');
                  },
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
                  child: const Text(
                    'Preço da Gasolina',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/retangle');
                  },
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
                  child: const Text(
                    'Retângulo',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                const SizedBox(width: 50),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/imc');
                  },
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
                  child: const Text(
                    'IMC',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
