import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50], // Fondo Rosa claro
      appBar: AppBar(
        title: const Text('Agencia de Autos Historia'),
        backgroundColor: const Color.fromARGB(255, 24, 206, 182),
        actions: const [Icon(Icons.history), Icon(Icons.star), SizedBox(width: 10)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text("Julan Garcia - 6J", 
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.pink)),
            const SizedBox(height: 10),
            const Text("HISTORIA", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 350,
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: const Color.fromARGB(255, 24, 206, 182)),
                  image: const DecorationImage(
                    image: NetworkImage('https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAmoviles-Act-15-examen/refs/heads/main/carross/kia.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 24, 206, 182)),
              onPressed: () => Navigator.pushNamed(context, '/about'),
              child: const Text("IR A ACERCA DE", style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}