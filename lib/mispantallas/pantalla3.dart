import 'package:flutter/material.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de 6 modelos de carros populares 2025
    final List<Map<String, dynamic>> autos = [
      {"nombre": "Nissan Sentra","imagen": "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAmoviles-Act-15-examen/refs/heads/main/carross/sentra.jpg"},
      {"nombre": "Toyota RAV4","imagen": "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAmoviles-Act-15-examen/refs/heads/main/carross/toyota.jpg"},
      {"nombre": "Ford Mustang","imagen": "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAmoviles-Act-15-examen/refs/heads/main/carross/mustang.jpg"},
      {"nombre": "Kia K3","imagen": "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAmoviles-Act-15-examen/refs/heads/main/carross/kia.jpg"},
      {"nombre": "Mazda CX-30","imagen": "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAmoviles-Act-15-examen/refs/heads/main/carross/mazda.jpg"},
      {"nombre": "Tesla Model Y","imagen": "https://raw.githubusercontent.com/GarciaValenciaJulian0498/IAmoviles-Act-15-examen/refs/heads/main/carross/tesla.jpg"},
    ];

    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: const Text('Catálogo 2025'),
        backgroundColor: const Color.fromARGB(255, 24, 206, 182),
        actions: const [Icon(Icons.view_list), Icon(Icons.shopping_cart), SizedBox(width: 10)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            const Text("CATÁLOGO", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.pink)),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10,
                ),
                itemCount: autos.length,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color.fromARGB(255, 24, 206, 182), 
                        width: 2
                      ),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Reemplazamos el Icon por la imagen de GitHub
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                autos[index]['imagen'], // URL de GitHub Raw
                                fit: BoxFit.cover,
                                // Indicador de carga mientras baja la imagen
                                loadingBuilder: (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return const Center(child: CircularProgressIndicator());
                                },
                                // Imagen de error por si falla el link
                                errorBuilder: (context, error, stackTrace) => 
                                  const Icon(Icons.directions_car, size: 50, color: Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            autos[index]['nombre'], 
                            style: const TextStyle(fontWeight: FontWeight.bold), 
                            textAlign: TextAlign.center
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}