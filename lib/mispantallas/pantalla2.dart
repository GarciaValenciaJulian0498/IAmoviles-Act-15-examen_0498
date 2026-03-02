import 'package:flutter/material.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: const Text('Sobre Nosotros'),
        backgroundColor: const Color.fromARGB(255, 24, 206, 182),
        actions: const [Icon(Icons.info), Icon(Icons.help), SizedBox(width: 10)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.white),
                image: const DecorationImage(
                  image: NetworkImage('https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAmoviles-Act-15-examen/refs/heads/main/carross/kia.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Sobre Nosotros", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            const Text(
              "Somos la agencia líder en autos deportivos y familiares. "
              "Nuestra misión es ponerte al volante del auto de tus sueños con el mejor financiamiento.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 24, 206, 182)),
              onPressed: () => Navigator.pushNamed(context, '/catalogo'),
              child: const Text("VER CATÁLOGO"),
            ),
          ],
        ),
      ),
    );
  }
}